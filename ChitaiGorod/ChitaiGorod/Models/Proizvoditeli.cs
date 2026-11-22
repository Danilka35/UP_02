using System;
using System.Collections.Generic;

namespace ChitaiGorod.Models;

public partial class Proizvoditeli
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<Tovar> Tovars { get; set; } = new List<Tovar>();
}
