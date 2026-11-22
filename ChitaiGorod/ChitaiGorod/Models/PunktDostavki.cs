using System;
using System.Collections.Generic;

namespace ChitaiGorod.Models;

public partial class PunktDostavki
{
    public int Id { get; set; }

    public string Address { get; set; } = null!;

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
