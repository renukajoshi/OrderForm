// This is a manifest file that'll be coofficeaddressiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// coofficeaddressiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//= 
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-datepicker
//= require_tree .


var firstname = new Array();
var lastname = new Array();
var contactno = new Array();
var emailid = new Array();

firstname[0] = "";
lastname[0] = "";
contactno[0] = "";
emailid[0]="";

firstname[1] = 1;
lastname[1] = "Joshi";
contactno[1] = "942038578";
emailid[1]="renurenukaj1@gmail.com";

firstname[2] = 2;
lastname[2] = "Joshi";
contactno[2] = "36527";
emailid[2]="dhanashri.joshi@gmail.com";


        function Choice() {
            //x = document.getElementById("officeaddressrs");
            y = document.getElementById("selectCustomers");

              //x.value = y.options[y.selectedIndex].text;
              document.getElementById("firstname").value =firstname[y.selectedIndex];
              document.getElementById("lastname").value = lastname[y.selectedIndex];
              document.getElementById("contactno").value = contactno[y.selectedIndex];
              document.getElementById("emailid").value=emailid[y.selectedIndex];
         }


