﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace vss
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class VSSEntities : DbContext
    {
        public VSSEntities()
            : base("name=VSSEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<MediaContent> MediaContent { get; set; }
        public virtual DbSet<Memberships> Memberships { get; set; }
        public virtual DbSet<MembershipTypes> MembershipTypes { get; set; }
        public virtual DbSet<Users> Users { get; set; }
        public virtual DbSet<vw_MediaContent> vw_MediaContent { get; set; }
    }
}