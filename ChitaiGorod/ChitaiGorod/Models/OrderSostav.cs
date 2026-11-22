using System;
using System.Collections.Generic;

namespace ChitaiGorod.Models;

public partial class OrderSostav
{
    public int Id { get; set; }

    public int IdOrder { get; set; }

    public string IdTovar { get; set; } = null!;

    public int? Quantity { get; set; }

    public virtual Order IdOrderNavigation { get; set; } = null!;

    public virtual Tovar IdTovarNavigation { get; set; } = null!;
}
