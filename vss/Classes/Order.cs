using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace vss.Classes
{
    public class Order
    {
        public string OrderID { get; set; }
        public string CustomerId { get; set; }
        public decimal Amount { get; set; }
        public int Quantity { get; set; }
    }
}