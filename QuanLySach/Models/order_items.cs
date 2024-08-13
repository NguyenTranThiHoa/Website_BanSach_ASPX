namespace QuanLySach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class order_items
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int order_id { get; set; }

        public int product_id { get; set; }

        [Required]
        [StringLength(100)]
        public string price { get; set; }

        [Required]
        [StringLength(100)]
        public string qty { get; set; }

        [Required]
        [StringLength(100)]
        public string ten { get; set; }

        [Required]
        [StringLength(50)]
        public string anh { get; set; }

        public int total { get; set; }

        public DateTime? created_at { get; set; }

        public DateTime? updated_at { get; set; }
    }
}
