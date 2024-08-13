using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace QuanLySach.Models
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<customer> customers { get; set; }
        public virtual DbSet<dangnhap> dangnhaps { get; set; }
        public virtual DbSet<order_items> order_items { get; set; }
        public virtual DbSet<order> orders { get; set; }
        public virtual DbSet<phanloai> phanloais { get; set; }
        public virtual DbSet<sanpham> sanphams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<customer>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<customer>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<customer>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<dangnhap>()
                .Property(e => e.user_name)
                .IsUnicode(false);

            modelBuilder.Entity<dangnhap>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<dangnhap>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<dangnhap>()
                .Property(e => e.description)
                .IsUnicode(false);

            modelBuilder.Entity<order_items>()
                .Property(e => e.price)
                .IsUnicode(false);

            modelBuilder.Entity<order_items>()
                .Property(e => e.qty)
                .IsUnicode(false);

            modelBuilder.Entity<order_items>()
                .Property(e => e.ten)
                .IsUnicode(false);

            modelBuilder.Entity<order_items>()
                .Property(e => e.anh)
                .IsUnicode(false);

            modelBuilder.Entity<order>()
                .Property(e => e.firstname)
                .IsUnicode(false);

            modelBuilder.Entity<order>()
                .Property(e => e.lastname)
                .IsUnicode(false);

            modelBuilder.Entity<order>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<order>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<order>()
                .Property(e => e.status)
                .IsUnicode(false);

            modelBuilder.Entity<phanloai>()
                .Property(e => e.phanloai_name)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.ten)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.anh)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.mota)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.masp)
                .IsUnicode(false);
        }
    }
}
