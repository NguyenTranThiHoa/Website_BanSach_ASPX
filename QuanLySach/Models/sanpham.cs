namespace QuanLySach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("sanpham")]
    public partial class sanpham
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int? phanloai_id { get; set; }

        [StringLength(255)]
        public string ten { get; set; }

        public int gia { get; set; }

        [StringLength(255)]
        public string anh { get; set; }

        [StringLength(500)]
        public string mota { get; set; }

        public int? soluong { get; set; }

        [StringLength(255)]
        public string masp { get; set; }
    }
}
