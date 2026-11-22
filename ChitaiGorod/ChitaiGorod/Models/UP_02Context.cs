using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace ChitaiGorod.Models;

public partial class UP_02Context : DbContext
{
    public UP_02Context()
    {
    }

    public UP_02Context(DbContextOptions<UP_02Context> options)
        : base(options)
    {
    }

    public virtual DbSet<EdinicaIzmerenium> EdinicaIzmerenia { get; set; }

    public virtual DbSet<Order> Orders { get; set; }

    public virtual DbSet<OrderSostav> OrderSostavs { get; set; }

    public virtual DbSet<OrderStatus> OrderStatuses { get; set; }

    public virtual DbSet<Postavchiki> Postavchikis { get; set; }

    public virtual DbSet<Proizvoditeli> Proizvoditelis { get; set; }

    public virtual DbSet<PunktDostavki> PunktDostavkis { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<Tovar> Tovars { get; set; }

    public virtual DbSet<TovarCategory> TovarCategories { get; set; }

    public virtual DbSet<User> Users { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=UP_02;Username=postgres;Password=postgres;SSL Mode=Disable");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<EdinicaIzmerenium>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("EdinicaIzmerenia_pkey");

            entity.Property(e => e.Name).HasMaxLength(50);
        });

        modelBuilder.Entity<Order>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("Orders_pkey");

            entity.HasOne(d => d.IdClientNavigation).WithMany(p => p.Orders)
                .HasForeignKey(d => d.IdClient)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("Orders_IdClient_fkey");

            entity.HasOne(d => d.IdPunktDostavkiNavigation).WithMany(p => p.Orders)
                .HasForeignKey(d => d.IdPunktDostavki)
                .HasConstraintName("Orders_IdPunktDostavki_fkey");

            entity.HasOne(d => d.IdStatusNavigation).WithMany(p => p.Orders)
                .HasForeignKey(d => d.IdStatus)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("Orders_IdStatus_fkey");
        });

        modelBuilder.Entity<OrderSostav>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("OrderSostav_pkey");

            entity.ToTable("OrderSostav");

            entity.Property(e => e.IdTovar).HasMaxLength(6);

            entity.HasOne(d => d.IdOrderNavigation).WithMany(p => p.OrderSostavs)
                .HasForeignKey(d => d.IdOrder)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("OrderSostav_IdOrder_fkey");

            entity.HasOne(d => d.IdTovarNavigation).WithMany(p => p.OrderSostavs)
                .HasForeignKey(d => d.IdTovar)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("OrderSostav_IdTovar_fkey");
        });

        modelBuilder.Entity<OrderStatus>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("OrderStatuses_pkey");

            entity.Property(e => e.Name).HasMaxLength(50);
        });

        modelBuilder.Entity<Postavchiki>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("Postavchiki_pkey");

            entity.ToTable("Postavchiki");

            entity.Property(e => e.Name).HasMaxLength(50);
        });

        modelBuilder.Entity<Proizvoditeli>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("Proizvoditeli_pkey");

            entity.ToTable("Proizvoditeli");

            entity.Property(e => e.Name).HasMaxLength(50);
        });

        modelBuilder.Entity<PunktDostavki>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PunktDostavki_pkey");

            entity.ToTable("PunktDostavki");

            entity.Property(e => e.Address).HasMaxLength(250);
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("Roles_pkey");

            entity.Property(e => e.Name).HasMaxLength(50);
        });

        modelBuilder.Entity<Tovar>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("Tovars_pkey");

            entity.Property(e => e.Id).HasMaxLength(6);
            entity.Property(e => e.Name).HasMaxLength(255);
            entity.Property(e => e.OpisanieTovar).HasMaxLength(1000);
            entity.Property(e => e.Photo).HasMaxLength(50);
            entity.Property(e => e.Price).HasPrecision(15, 2);

            entity.HasOne(d => d.IdCategoryNavigation).WithMany(p => p.Tovars)
                .HasForeignKey(d => d.IdCategory)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("Tovars_IdCategory_fkey");

            entity.HasOne(d => d.IdEdinicaIzmereniaNavigation).WithMany(p => p.Tovars)
                .HasForeignKey(d => d.IdEdinicaIzmerenia)
                .HasConstraintName("Tovars_IdEdinicaIzmerenia_fkey");

            entity.HasOne(d => d.IdPostavchikaNavigation).WithMany(p => p.Tovars)
                .HasForeignKey(d => d.IdPostavchika)
                .HasConstraintName("Tovars_IdPostavchika_fkey");

            entity.HasOne(d => d.IdProizvoditelaNavigation).WithMany(p => p.Tovars)
                .HasForeignKey(d => d.IdProizvoditela)
                .HasConstraintName("Tovars_IdProizvoditela_fkey");
        });

        modelBuilder.Entity<TovarCategory>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("TovarCategories_pkey");

            entity.Property(e => e.Name).HasMaxLength(50);
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("Users_pkey");

            entity.Property(e => e.Famaly).HasMaxLength(50);
            entity.Property(e => e.Login).HasMaxLength(50);
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.Otchestvo).HasMaxLength(50);
            entity.Property(e => e.Password).HasMaxLength(50);

            entity.HasOne(d => d.IdRoleNavigation).WithMany(p => p.Users)
                .HasForeignKey(d => d.IdRole)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("Users_IdRole_fkey");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
