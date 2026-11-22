using ChitaiGorod.Pages;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ChitaiGorod
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            mainFrame.NavigationService.Navigate(new VhodPage());
        }

        private void nazadButton_Click(object sender, RoutedEventArgs e)
        {
            if (mainFrame.NavigationService.CanGoBack)
            {
                mainFrame.NavigationService.GoBack();
            }
        }

        private void mainFrame_Navigated(object sender, NavigationEventArgs e)
        {
            nazadButton.IsEnabled = mainFrame.NavigationService.CanGoBack;
        }
    }
}