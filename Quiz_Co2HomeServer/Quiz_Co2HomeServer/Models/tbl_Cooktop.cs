//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Quiz_Co2HomeServer.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Cooktop
    {
        public int CooktopID { get; set; }
        public Nullable<int> CategoryID { get; set; }
        public string Usernme { get; set; }
        public Nullable<int> NoOfCooktops { get; set; }
        public string Appliance { get; set; }
        public string Make1 { get; set; }
        public string Make2 { get; set; }
        public string Make3 { get; set; }
        public string Model1 { get; set; }
        public string Model2 { get; set; }
        public string Model3 { get; set; }
        public string Tip1 { get; set; }
        public string Tip2 { get; set; }
        public string Tip3 { get; set; }
        public string Wallt1 { get; set; }
        public string Wallt2 { get; set; }
        public string Wallt3 { get; set; }
        public Nullable<decimal> TotalWatts { get; set; }
        public string AffilaiteLink { get; set; }
        public string Image { get; set; }
    
        public virtual tbl_Category tbl_Category { get; set; }
        public virtual tbl_Category tbl_Category1 { get; set; }
    }
}
