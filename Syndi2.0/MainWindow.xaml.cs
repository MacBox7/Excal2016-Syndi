<<<<<<< HEAD
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
using System.Runtime.InteropServices;

namespace Syndi2._0
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private HomePage hPage = new HomePage();
        private SharePage sPage = new SharePage();
        private SearchPage searchPage = new SearchPage();
        private SettingsPage settingsPage = new SettingsPage();
        public MainWindow()
        {
            InitializeComponent();
        }
        public void OnWindowLoad(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(hPage);
        }
        private void homeButtonClick(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(hPage);
        }

        private void shareButtonClick(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(sPage);
        }

        private void RefreshButton_Click(object sender, RoutedEventArgs e)
        {
            //MessageBox.Show(((MainFrame)this).CurrentSource.ToString());
        }

        private void searchButtonClick(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(searchPage);
        }
        private void settingsButtonClick(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(settingsPage);
        }
    }
}
=======
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
using System.Runtime.InteropServices;

namespace Syndi2._0
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private HomePage hPage = new HomePage();
        private SharePage sPage = new SharePage();
        
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(hPage);
        }
        
        private void homeButtonClick(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(hPage);
        }

        private void shareButtonClick(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(sPage);
        }
        private List<string> exec_cmd(string arguments)
        {
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            startInfo.FileName = "cmd.exe";
            startInfo.Arguments = arguments;
            process.StartInfo = startInfo;
            process.Start();
            List<string> output = new List<string>();
            output.Add(process.StandardOutput.ReadLine());
            process.Close();
            return output;
        }
    }
}
>>>>>>> 9efb8e42243f51850c1a22ecbcd33cd374ca75eb
