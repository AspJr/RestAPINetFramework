using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RestAPINetFramework.Models
{
    public class Marketing
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
    }

    public class Marketings
    {
        public string Success { set; get; }
        public List<ListMarketing> Data { set; get; }
    }
    public class ListMarketing
    {
        public string ID { get; set; }
        public string Name { get; set; }
    }
}