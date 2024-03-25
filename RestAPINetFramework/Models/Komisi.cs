using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RestAPINetFramework.Models
{
    public class Komisi
    {

        public string Success { set; get; }
        public List<ListKomisi> Data { set; get; }
    }

    public class ListKomisi
    {

        public string Name { get; set; }
        public string Bulan { get; set; }
        public string Omzet { get; set; }
        public string KomisiPersen { get; set; }
        public string KomisiNominal { get; set; }
    }
}