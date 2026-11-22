using ChitaiGorod.Models;
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
    /// Логика взаимодействия для VhodPage.xaml
    /// </summary>
    public partial class VhodPage : Page
    {
        private UP_02Context _db = new UP_02Context();
        public VhodPage()
        {
            InitializeComponent();
        }

        private void vhodButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string login = loginTextBox.Text.Trim();
                string password = passwordTextBox.Text.Trim();

                var user = _db.Users.FirstOrDefault(u => u.Login == login && u.Password == password);
                if (user == null)
                {
                    MessageBox.Show("Неверный логин или пароль", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
                    return;
                }

                MainClass.IdRole = user.IdRole;
                MainClass.IdUser = user.Id;

                MainWindow mainWindow = Application.Current.MainWindow as MainWindow;
                mainWindow.fioLabel.Content = $"{user.Famaly} {user.Name} {user.Otchestvo}";

                this.NavigationService.Navigate(new SpisokTovarsPage());
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при авторизации: {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            if (Application.Current.MainWindow is MainWindow mainWindow)
            {
                mainWindow.namePage.Content = "";
            }
        }
    }
}
