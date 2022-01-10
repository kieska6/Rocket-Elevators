// $("#interv_building_id").prop("disabled", true); // second dropdown is disable while first dropdown is empty
// $("#interv_customer_id").change(function(event){
//   	var customer = $(event.currentTarget).val();
//   	if(customer == ''){
//   		$("#interv_building_id").prop("disabled", true);
//   	}else{
//   		$("#interv_building_id").prop("disabled", false);
//   	}
//   	$.ajax({
// 	    url: "/interventions/get_building" + customer_id,
// 	    method: "GET",  
// 	    dataType: "json",
// 	    data: {customer_id: customer_id},
// 	    error: function (xhr, status, error) {
// 	      	console.error('AJAX Error: ' + status + error);
// 	    },
// 	    success: function (response) {
// 	      	console.log(response);
// 	      	var buildings = response["building_id"];
// 	      	$("#interv_building_id").empty();

// 	      	$("#interv_building_id").append('<option>Select Building</option>');
// 	      	for(var i = 0; i < building_id.length; i++){
// 	      		$("#interv_building_id").append('<option value="' + buildings[i]["id"] + '">' +buildings[i]["name"] + '</option>');
// 	      	}
// 	    }
//   	});
// });