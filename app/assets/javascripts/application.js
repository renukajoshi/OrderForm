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

// var firstname = new Array();
// var lastname = new Array();
// var contactno = new Array();
// var emailid = new Array();

// firstname[0] = "";
// lastname[0] = "";
// contactno[0] = "";
// emailid[0]="";

// firstname[1] = 1;
// lastname[1] = "Joshi";
// contactno[1] = "942038578";
// emailid[1]="renurenukaj1@gmail.com";

// firstname[2] = 2;
// lastname[2] = "Joshi";
// contactno[2] = "36527";
// emailid[2]="dhanashri.joshi@gmail.com";


//         function Choice() {
//             //x = document.getElementById("officeaddressrs");
//             y = document.getElementById("selectCustomers");

//               //x.value = y.options[y.selectedIndex].text;
//               document.getElementById("firstname").value =firstname[y.selectedIndex];
//               document.getElementById("lastname").value = lastname[y.selectedIndex];
//               document.getElementById("contactno").value = contactno[y.selectedIndex];
//               document.getElementById("emailid").value=emailid[y.selectedIndex];
//          }


var customer = new Array();

	foreach($customer as $ value){
		echo '<option>'.$fname.'</option>';
		echo '<option>'.$lname.'</option>';
		echo '<option>'.$email.'</option>';
		echo '<option>'.$contact_no.'</option>';
		echo '<option>'.$birthdate.'</option>';
	}
function Select() {
	x = document.getElementById("selectCustomers");

		document.getElementById("fname").value = customer[x.selectedIndex];
		document.getElementById("lname").value = customer[x.selectedIndex];
		document.getElementById("email").value = customer[x.selectedIndex];
		document.getElementById("contact_no").value = customer[x.selectedIndex];
		document.getElementById("birthdate").value = customer[x.selectedIndex];
}


// var permanantaddress = new Array();
// var officeaddress = new Array();
// var tempararyaddress = new Array();


// permanantaddress[0] = "";
// officeaddress[0] = "";
// tempararyaddress[0] = "";

// permanantaddress[1] = "mahabl";
// officeaddress[1] = "Baner";
// tempararyaddress[1] = "Pune";


// permanantaddress[2] = "manraj park";
// officeaddress[2] = "Baner";
// tempararyaddress[2] = "Pune";

// permanantaddress[3] = "ramanand";
// officeaddress[3] = "Baner";
// tempararyaddress[3] = "Pune";


//         function Select() {
//             //x = document.getElementById("officeaddressrs");
//             y = document.getElementById("selectAddresses");

//               //x.value = y.options[y.selectedIndex].text;
//               document.getElementById("permanantaddress").value = permanantaddress[y.selectedIndex];
//               document.getElementById("officeaddress").value = officeaddress[y.selectedIndex];
//               document.getElementById("tempararyaddress").value = tempararyaddress[y.selectedIndex];
             
//          }

