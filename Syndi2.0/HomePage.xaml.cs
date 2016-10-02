﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.DirectoryServices;
using NetworkScanner;
    
namespace Syndi2._0
{
    /// <summary>
    /// Interaction logic for HomePage.xaml
    /// </summary>
    public partial class HomePage : Page
    {
        List<List<string>> PcList;
        public HomePage()
        {
            InitializeComponent();            
        }
        public void OnPageLoad(object sender, RoutedEventArgs e)
        {
            PopulatePcList();
        }
        public void PopulatePcCmdList()
        {
            string netBiosName = System.Environment.MachineName;
            PcName.Text = netBiosName;
            PcList = NetworkScanner.Scan.RetrievePCNames();
            int count = PcList[0].Count + PcList[1].Count - 1;
            
            NumberOfConnections.Text = (count < 10 ? "0" : "") + count.ToString();
            if(count == 0)
            {
                availableText.Text = "unavailable";
                availableText.Foreground = new SolidColorBrush(Colors.Red);
            }
            foreach (List<string> L in PcList)
            {
                foreach(string name in L)
                {
                    if(name != netBiosName)
                    {
                        CustomTile t = new CustomTile(name);
                        t.ContentTileButton.Click += (sender1, ex) => this.Display(t);
                        PcListTileContainer.Children.Add(t);
                    }
                }
            }
        }
        public void PopulatePcList()
        {
            string netBiosName = System.Environment.MachineName;
            PcName.Text = netBiosName;
            List<String> _ComputerNames = new List<String>();
            String _ComputerSchema = "Computer";
            int count = 0;
            System.DirectoryServices.DirectoryEntry _WinNTDirectoryEntries = new System.DirectoryServices.DirectoryEntry("WinNT:");
            foreach (System.DirectoryServices.DirectoryEntry _AvailDomains in _WinNTDirectoryEntries.Children)
            {
                Console.WriteLine("List " + _AvailDomains.Name);
                foreach (System.DirectoryServices.DirectoryEntry _PCNameEntry in _AvailDomains.Children)
                {
                    if (_PCNameEntry.SchemaClassName.ToLower().Contains(_ComputerSchema.ToLower()))
                    {
                        if(_PCNameEntry.Name.Length > 0)
                        {
                            count++;
                            CustomTile t = new CustomTile(_PCNameEntry.Name);
                            t.ContentTileButton.Click += (sender1, ex) => this.Display(t);
                            PcListTileContainer.Children.Add(t);
                            //var folders = System.IO.Directory.GetDirectories(@"\\"+_PCNameEntry.Name );
                            //Console.WriteLine(folders.ToArray().ToString());
                        }
                    }
                }
            }
            NumberOfConnections.Text = ((count < 10) ? "0" : "") + count.ToString() ;            
            Display(new CustomTile(netBiosName));
        }
        public void Display(CustomTile sender)
        {
            CurrentViewPc.Text = sender.TileHeader.Text;
            try
            {
                PcDetailsContainer.Children.Clear();
                List<string> folders = Scan.IdentifyFolderNames(sender.TileHeader.Text);
                SegLibrary.Seperate.CurrSearch("\\" + sender.TileHeader.Text, new System.Text.RegularExpressions.Regex(".*"), folders);
                foreach (string file in folders)
                {
                    Console.WriteLine(file);
                    PcDetailsContainer.Children.Add(new FolderTiles(file));
                    
                }
            }
            catch
            {
                PcDetailsContainer.Children.Add(new FolderTiles("No Access"));
            }
        }
    }
}
