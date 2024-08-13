namespace QuanLySach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class order
    {
        internal object total;

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int? user_id { get; set; }

        [StringLength(255)]
        public string firstname { get; set; }

        [StringLength(255)]
        public string lastname { get; set; }

        [StringLength(255)]
        public string address { get; set; }

        [StringLength(20)]
        public string phone { get; set; }

        [StringLength(70)]
        public string email { get; set; }

        [StringLength(80)]
        public string status { get; set; }

        public DateTime? created_at { get; set; }

        public DateTime? updated_at { get; set; }
    }
}
