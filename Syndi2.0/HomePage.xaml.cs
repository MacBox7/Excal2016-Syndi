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
using System.IO;
    
namespace Syndi2._0
{
    /// <summary>
    /// Interaction logic for HomePage.xaml
    /// </summary>
    public partial class HomePage : Page
    {
        //Variables
        public List<Scan.StructDataOfPC> PcList = new List<Scan.StructDataOfPC>();

        //Functions
        public HomePage()
        {
            InitializeComponent();            
        }
        public void OnPageLoad(object sender, RoutedEventArgs e)
        {
            PopulatePcList();
        }
        public async void PopulatePcList()
        {
            string netBiosName = Environment.MachineName;
            PcName.Text = netBiosName;
            await Task.Delay(5);
            PcList = Scan.DetailsOfPC();
            
            int count =  0;
            PcListTileContainer.Children.Clear();
            foreach (Scan.StructDataOfPC PC in PcList)
            {
                count++;
                Console.WriteLine(PC.ToString());
                CustomTile t = new CustomTile(PC, count);
                if(PC.TypeOfPC.ToUpper() == "PUBLIC")
                    t.ContentTileButton.Click += (sender1, ex) => this.Display(t);
                PcListTileContainer.Children.Add(t);
                if(PC.NameOfPC == netBiosName)
                {
                    Display(new CustomTile(PC, 0));
                }
            }
            if(count > 99)
            {
                NumberOfConnections.Text = count.ToString();
            }
            else if (count > 9)
            {
                NumberOfConnections.Text = "0" + count.ToString();
            }
            else
            {
                NumberOfConnections.Text = "00" + count.ToString();
            }
            if (count == 0)
            {
                availableText.Text = "unavailable";
                availableText.Foreground = new SolidColorBrush(Color.FromArgb(255, 232, 55, 78));//#FFE8554E
            }
            else if (count > 0)
            {
                availableText.Text = "available";
                availableText.Foreground = new SolidColorBrush(Color.FromArgb(255, 106, 232, 78));//#FF6AE84E
            }
        }
        public void Display(CustomTile sender)
        {
            PopulateFileList(sender.TileHeader.Text);
        }
        public void PopulateFileList(string path) { 
            CurrentViewPc.Text = path;
            try
            {
                PcDetailsContainer.Children.Clear();
                List<string> folders = Scan.IdentifyFolderNames(path);
                
                foreach (string folder in folders)
                {
                    string name = folder;
                    string Path = "\\\\" + path + "\\" + folder;
                    List<string> ImageList = new List<string>();
                    List<string> VideoList = new List<string>();
                    List<string> AudioList = new List<string>();
                    List<string> TextList = new List<string>();
                    ImageList = SegLibrary.Seperate.GetImages(@Path);
                    AudioList = SegLibrary.Seperate.GetAudios(@Path);
                    VideoList = SegLibrary.Seperate.GetVideos(@Path);
                    TextList = SegLibrary.Seperate.GetDocs(@Path);
                    var size = SharePage.DirSize(new System.IO.DirectoryInfo(@Path));
                    FolderTile f = new FolderTile(name, path, VideoList.Count.ToString(), AudioList.Count.ToString(), TextList.Count.ToString(), ImageList.Count.ToString(), size);
                    f.DownloadThis.Click += (sender1, ex) => this.DownloadItem(@Path);
                    f.MouseDoubleClick += (sender1, ex) => this.ExploreItem(@Path);
                    PcDetailsContainer.Children.Add(f);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception thrown ! No Access");
                Console.WriteLine(e + path);
            }
        }
        private async void ExploreItem(string path)
        {
            await Task.Delay(5);
            int indexFrom, indexLength;
            List<string> Inner = new List<string>();
            SegLibrary.Seperate.CurrSearch(path,new System.Text.RegularExpressions.Regex(".*"),Inner);
            PcDetailsContainer.Children.Clear();
            foreach(string name in Inner)
            {
                indexFrom = name.LastIndexOf('\\') + 1;
                indexLength = name.Length;
                PcDetailsContainer.Children.Add(new FolderTiles(name.Substring(indexFrom, indexLength - indexFrom)));
            }
        }

        private async void DownloadItem(string path)
        {
            await Task.Delay(5);
            Console.WriteLine("Copy initiated");
            var destination = Properties.Settings.Default["Path"].ToString();
            Console.WriteLine(destination);
            if (Directory.Exists(destination))
                Scan.CopyFiles(path, destination.ToString());
            else
                System.Windows.Forms.MessageBox.Show("Invalid Path, Go to the settings to change it");
        }
        private async void BrowseLeftPc_Click(object sender, RoutedEventArgs e)
        {
            int i = 0;
            while (PCScrollViewer.HorizontalOffset != 0 && i < 20)
            {
                await Task.Delay(1);
                i++;
                PCScrollViewer.ScrollToHorizontalOffset(PCScrollViewer.HorizontalOffset - 10);
            }
        }

        private async void BrowseRightPc_Click(object sender, RoutedEventArgs e)
        {
            int i = 0;
            while (PCScrollViewer.HorizontalOffset != PCScrollViewer.ScrollableWidth && i < 20)
            {
                await Task.Delay(1);
                i++;
                PCScrollViewer.ScrollToHorizontalOffset(PCScrollViewer.HorizontalOffset + 10);
            }
        }
        private async void BrowseLeftFiles_Click(object sender, RoutedEventArgs e)
        {
            int i = 0;
            while (PCFolderScroll.HorizontalOffset != 0 && i < 20)
            {
                await Task.Delay(1);
                i++;
                PCFolderScroll.ScrollToHorizontalOffset(PCFolderScroll.HorizontalOffset - 10);
            }
        }

        private async void BrowseRightFiles_Click(object sender, RoutedEventArgs e)
        {
            int i = 0;
            while (PCFolderScroll.HorizontalOffset != PCFolderScroll.ScrollableWidth && i < 20)
            {
                await Task.Delay(1);
                i++;
                PCFolderScroll.ScrollToHorizontalOffset(PCFolderScroll.HorizontalOffset + 10);
            }
        }
    }
}
