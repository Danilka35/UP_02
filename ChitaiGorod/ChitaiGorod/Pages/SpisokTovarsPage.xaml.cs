using ChitaiGorod.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
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
    /// Логика взаимодействия для SpisokTovarsPage.xaml
    /// </summary>
    public partial class SpisokTovarsPage : Page
    {
        private UP_02Context _db = new UP_02Context();
        private List<Tovar> _spisok = new List<Tovar>();
        public SpisokTovarsPage()
        {
            InitializeComponent();

            if (MainClass.IdRole != 1 && MainClass.IdRole != 2)
            {
                poiskSortFilterGrid.Visibility = Visibility.Collapsed;
            }
            if (MainClass.IdRole != 1)
            {
                addTovarButton.Visibility = Visibility.Collapsed;
            }
            LoadTovars();
        }

        private void LoadTovars()
        {
            try
            {
                _spisok = _db.Tovars
                    .Include(t => t.IdCategoryNavigation)
                    .Include(t => t.IdPostavchikaNavigation)
                    .Include(t => t.IdProizvoditelaNavigation)
                    .Include(t => t.IdEdinicaIzmereniaNavigation)
                    .ToList();
                tovarListView.ItemsSource = _spisok;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке товаров: {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void UpdateDataSpisok()
        {
            if (poiskSpisokTextBox == null || poleSortComboBox == null || viborSortCmboBox == null || filterSkidkaComboBox == null)
            {
                return;
            }

            var currentSpisok = _spisok;

            // поиск
            if (!string.IsNullOrEmpty(poiskSpisokTextBox.Text))
            {
                string poisk = poiskSpisokTextBox.Text.ToLower();
                currentSpisok = currentSpisok
                    .Where(s => (s.Name != null && s.Name.ToLower().Contains(poisk))
                        || (s.OpisanieTovar != null && s.OpisanieTovar.ToLower().Contains(poisk)))
                    .ToList();
            }

            // фильтрация
            switch (filterSkidkaComboBox.SelectedIndex)
            {
                case 1:
                    currentSpisok = currentSpisok.Where(s => s.Skidka >= 0 && s.Skidka < 13).ToList();
                    break;
                case 2:
                    currentSpisok = currentSpisok.Where(s => s.Skidka >= 13 && s.Skidka < 17).ToList();
                    break;
                case 3:
                    currentSpisok = currentSpisok.Where(s => s.Skidka >= 17).ToList();
                    break;
            }

            if (poleSortComboBox.SelectedIndex != 0 && viborSortCmboBox.SelectedIndex != -1)
            {
                bool viborSort = viborSortCmboBox.SelectedIndex == 0;

                switch (poleSortComboBox.SelectedIndex)
                {
                    case 1:
                        currentSpisok = viborSort
                            ? currentSpisok.OrderBy(s => s.FinalPrice).ToList()
                            : currentSpisok.OrderByDescending(s => s.FinalPrice).ToList();
                        break;
                    case 2:
                        currentSpisok = viborSort
                            ? currentSpisok.OrderBy(s => s.QuantityNaSklade).ToList()
                            : currentSpisok.OrderByDescending(s => s.QuantityNaSklade).ToList();
                        break;
                }
            }


            tovarListView.ItemsSource = currentSpisok;
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            if (Application.Current.MainWindow is MainWindow mainWindow)
            {
                mainWindow.namePage.Content = "Список товаров";
            }
        }

        private void openZakazsButton_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new ZakazsPage());
        }

        private void poiskSpisokTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateDataSpisok();
        }

        private void filterSkidkaComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateDataSpisok();
        }

        private void addTovarButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void poleSortComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateDataSpisok();
        }

        private void viborSortCmboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateDataSpisok();
        }
    }
}
