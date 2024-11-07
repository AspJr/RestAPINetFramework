using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RestAPINetFramework.Models
{
    public class Penjualan
    {
        public string ID { get; set; }
        public string TransactionNumber { get; set; }
        public string MarketingID { get; set; }
        public string Date { get; set; }
        public string CargoFee { get; set; }
        public string TotalBalance { get; set; }
        public string GrandTotal { get; set; }
        public int Code { get; set; }
    }

    public class Penjualans
    {
        public string Success { set; get; }
        public List<ListPenjualan> Data { set; get; }
    }

    public class ListPenjualan
    {
        public string ID { get; set; }
        public string TransactionNumber { get; set; }
        public string MarketingID { get; set; }
        public string Date { get; set; }
        public string CargoFee { get; set; }
        public string TotalBalance { get; set; }
        public string GrandTotal { get; set; }
        public int Code { get; set; }
    }
}
