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


$(document).ready(function() {
    $("#customer_detail").change(function() {
		console.log('hello');
        $("#customer_detail option:selected").map(function() {
            //$("#order_customer_attributes_fname").val($($fname).text());
            $("#order_customer_attributes_email").val($(this).text());
            $.ajax({
            	type: "GET",
            	url: "/customers/get_details?email=" + $(this).text(),
            	datatype: "json",
            	success: function(result){
            		//console.log(result['cust']);
            		//console.log(result['adr']);
            		//console.log(adr);
            		//window.alert(result.fname)
            		$("#order_customer_attributes_fname").val(result['cust'].fname);
            		$("#order_customer_attributes_lname").val(result['cust'].lname);
            		$("#order_customer_attributes_contact_no").val(result['cust'].contact_no);
                    for(var i=0;i<result['adr'].length;i++)
                    {   
                        for(var j = 0; j < i ;j++)
                        {    
                            console.log(result['adr'][j].permanant_addr);
                            $("#order_address_attributes_permanant_addr").val(result['adr'][j].permanant_addr);
                            $("#order_address_attributes_office_addr").val(result['adr'][j].office_addr);
                            $("#order_address_attributes_temparary_addr").val(result['adr'][j].temparary_addr);
                            $("#order_address_attributes_city").val(result['adr'][j].city);
                            $("#order_address_attributes_state").val(result['adr'][j].state);
                            $("#order_address_attributes_country").val(result['adr'][j].country);
                            $("#order_address_attributes_pin_code").val(result['adr'][j].pin_code);
                        }
                    }
                        
                }
            });
        });
    });
});


$(document).ready(function() {
    $("#products").change(function() {
		console.log('hello');
        $("#products option:selected").map(function() {
            //$("#order_customer_attributes_fname").val($($fname).text());
            $("#order_line_items_attributes_0_name").val($(this).text());
            $.ajax({
            	type: "GET",
            	url: "/products/product_details?name=" + $(this).text(),
            	datatype: "json",
            	success: function(data){
            		console.log(data);
            		$("#order_line_items_attributes_0_sku").val(data.sku);
            		$("#order_line_items_attributes_0_quantity").val(data.quantity);
            		$("#order_line_items_attributes_0_price").val(data.price);
            	}
            });
        });
    });
});