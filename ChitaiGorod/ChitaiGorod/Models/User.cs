using System;
using System.Collections.Generic;

namespace ChitaiGorod.Models;

public partial class User
{
    public int Id { get; set; }

    public int IdRole { get; set; }

    public string Famaly { get; set; } = null!;

    public string Name { get; set; } = null!;

    public string? Otchestvo { get; set; }

    public string Login { get; set; } = null!;

    public string? Password { get; set; }

    public virtual Role IdRoleNavigation { get; set; } = null!;

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
