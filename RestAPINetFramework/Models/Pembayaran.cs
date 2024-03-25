using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RestAPINetFramework.Models
{
    public class Pembayaran
    {
        public string KodePelanggan { get; set; }
        public string NamaPelanggan { get; set; }
        public DateTime Date { get; set; }
        public float JumlahPembayaran { get; set; }
        public string JenisPembayaran { get; set; }
        public string TransactionNumber { get; set; }
        public string Keterangan { get; set; }
    }
}