﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication2
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class textbookContext : DbContext
    {
        public textbookContext()
            : base("name=textbookContext")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<book> books { get; set; }
        public virtual DbSet<campu> campus { get; set; }
        public virtual DbSet<contactmethod> contactmethods { get; set; }
        public virtual DbSet<seller> sellers { get; set; }
        public virtual DbSet<seller_book> seller_book { get; set; }
        public virtual DbSet<usertype> usertypes { get; set; }
    }
}
