using System;
using System.Collections.Generic;

namespace ChitaiGorod.Models;

public partial class Tovar
{
    public string Id { get; set; } = null!;

    public string Name { get; set; } = null!;

    public int? IdEdinicaIzmerenia { get; set; }

    public decimal Price { get; set; }

    public int? IdPostavchika { get; set; }

    public int? IdProizvoditela { get; set; }

    public int IdCategory { get; set; }

    public int? Skidka { get; set; }

    public int? QuantityNaSklade { get; set; }

    public string? OpisanieTovar { get; set; }

    public string? Photo { get; set; }

    public virtual TovarCategory IdCategoryNavigation { get; set; } = null!;

    public virtual EdinicaIzmerenium? IdEdinicaIzmereniaNavigation { get; set; }

    public virtual Postavchiki? IdPostavchikaNavigation { get; set; }

    public virtual Proizvoditeli? IdProizvoditelaNavigation { get; set; }

    public virtual ICollection<OrderSostav> OrderSostavs { get; set; } = new List<OrderSostav>();
}
