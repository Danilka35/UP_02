using System;
using System.Collections.Generic;

namespace ChitaiGorod.Models;

public partial class Order
{
    public int Id { get; set; }

    public DateOnly DateOrder { get; set; }

    public DateOnly? DateDostavka { get; set; }

    public int? IdPunktDostavki { get; set; }

    public int IdClient { get; set; }

    public int? KodPoluchenia { get; set; }

    public int IdStatus { get; set; }

    public virtual User IdClientNavigation { get; set; } = null!;

    public virtual PunktDostavki? IdPunktDostavkiNavigation { get; set; }

    public virtual OrderStatus IdStatusNavigation { get; set; } = null!;

    public virtual ICollection<OrderSostav> OrderSostavs { get; set; } = new List<OrderSostav>();
}
