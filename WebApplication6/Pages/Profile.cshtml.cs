﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace WebApplication6.Pages
{
    public class ProfileModel : PageModel
    {
        public string Message { get; set; }

        public void OnGet()
        {
            
        }
    }
}