using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Windows;
using System.Windows.Media;

namespace ChitaiGorod.Models
{
    public partial class Tovar
    {
        public string FullPhotoPath
        {
            get
            {
                string baseDir = AppDomain.CurrentDomain.BaseDirectory;
                string image = Path.Combine(baseDir, "images", "picture.png");

                if (string.IsNullOrWhiteSpace(Photo))
                {
                    return image;
                }

                string fullPath = Path.Combine(baseDir, "images", Photo);

                if (File.Exists(fullPath))
                {
                    return fullPath;
                }
                return image;
            }
        }

        public SolidColorBrush TovarBackground
        {
            get
            {
                if (QuantityNaSklade == null || QuantityNaSklade <= 0)
                {
                    return new SolidColorBrush(Colors.LightGray);
                }

                if (Skidka != null && Skidka > 25)
                {
                    return (SolidColorBrush)new BrushConverter().ConvertFromString("#23E1EF")!;
                }

                return new SolidColorBrush(Colors.Transparent);
            }
        }

        public Visibility SkidkaVisibility
        {
            get
            {
                return (Skidka != null && Skidka > 0) ? Visibility.Visible : Visibility.Collapsed;
            }
        }

        public decimal FinalPrice
        {
            get
            {
                if (Skidka != null && Skidka > 0)
                {
                    decimal sumSkidka = Price * (Skidka.Value / 100m);
                    return Price - sumSkidka;
                }
                return Price;
            }
        }
    }
}
