using ChitaiGorod.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
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

namespace ChitaiGorod.Pages
{
    /// <summary>
    /// Логика взаимодействия для ZakazsPage.xaml
    /// </summary>
    public partial class ZakazsPage : Page
    {
        private UP_02Context _db = new UP_02Context();
        public ZakazsPage()
        {
            InitializeComponent();

            if (MainClass.IdRole != 1)
            {
                adminPanelGrid.Visibility = Visibility.Collapsed;
            }

            LoadZakazs();
        }

        private void LoadZakazs()
        {
            try
            {
                var zakazs = _db.Orders
                    .Include(z => z.IdStatusNavigation)
                    .Include(z => z.IdPunktDostavkiNavigation)
                    .ToList();
                spisokZakazsListView.ItemsSource = zakazs;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке списка заказов: {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            if (Application.Current.MainWindow is MainWindow mainWindow)
            {
                mainWindow.namePage.Content = "Список заказов";
            }
        }
    }
}
