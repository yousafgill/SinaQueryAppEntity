//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SinaQueryAppEntity.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserProfile
    {
        public UserProfile()
        {
            this.QueryMains = new HashSet<QueryMain>();
        }
    
        public int Id { get; set; }
        public string User_Login { get; set; }
        public string User_Password { get; set; }
        public string User_DisplayName { get; set; }
        public string User_Email { get; set; }
        public Nullable<bool> Use_Disabled { get; set; }
    
        public virtual ICollection<QueryMain> QueryMains { get; set; }
    }
}
