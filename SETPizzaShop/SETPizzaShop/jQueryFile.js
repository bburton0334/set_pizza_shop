// global variable - for use in jQuery (AJAX) calls
var jQueryXMLHttpRequest; 


$(document).ready(function () {

    //alert("Checked Box Selected");
});



// This is called when the Save button is clicked
$(document).on('click', '#btnSubmitOrder', function () {

    // calling function to deal with save functionality
    //SubmitOrder();
});



function SubmitOrder() {


}



function chkDoubleCheeseToppingsClicked(sel) {

    var usrTopping = document.getElementById("lblDoubleCheese").innerHTML;
    var selectedStatus;

    if (document.getElementById('chkDoubleCheese').checked) {
        selectedStatus = "on"
    } else {
        selectedStatus = "off";
    }

    var combMessage = usrTopping + "|" + selectedStatus;

    // parisng string into json string
    var jsonData = { message: combMessage };
    var jsonString = JSON.stringify(jsonData);

    jQueryXMLHttpRequest = $.ajax({
        type: "POST",
        url: "Page2.aspx/UpdateToppings",
        data: jsonString,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {

            // checking if data is not null
            if (data != null && data.d != null) {

                // holds response from the called function
                var response;
                response = $.parseJSON(data.d);


                document.getElementById("lblTotalPrice").innerHTML = "Total Cost: $" + response.description;
            }
        },
        fail: function () {

            // signify error to user in feedback
            document.getElementById("lblTotalPrice").innerHTML = "The call to the WebMethod failed!";
        }

    });
}



function chkGreenPeppersToppingsClicked(sel) {

    var usrTopping = document.getElementById("lblGreenPeppers").innerHTML;
    var selectedStatus;

    if (document.getElementById('chkGreenPeppers').checked) {
        selectedStatus = "on"
    } else {
        selectedStatus = "off";
    }

    var combMessage = usrTopping + "|" + selectedStatus;

    // parisng string into json string
    var jsonData = { message: combMessage };
    var jsonString = JSON.stringify(jsonData);

    jQueryXMLHttpRequest = $.ajax({
        type: "POST",
        url: "Page2.aspx/UpdateToppings",
        data: jsonString,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {

            // checking if data is not null
            if (data != null && data.d != null) {

                // holds response from the called function
                var response;
                response = $.parseJSON(data.d);


                document.getElementById("lblTotalPrice").innerHTML = "Total Cost: $" + response.description;
            }
        },
        fail: function () {

            // signify error to user in feedback
            document.getElementById("lblTotalPrice").innerHTML = "The call to the WebMethod failed!";
        }

    });
}



function chkGreenOlivesToppingsClicked(sel) {

    var usrTopping = document.getElementById("lblGreenOlives").innerHTML;
    var selectedStatus;

    if (document.getElementById('chkGreenOlives').checked) {
        selectedStatus = "on"
    } else {
        selectedStatus = "off";
    }

    var combMessage = usrTopping + "|" + selectedStatus;

    // parisng string into json string
    var jsonData = { message: combMessage };
    var jsonString = JSON.stringify(jsonData);

    jQueryXMLHttpRequest = $.ajax({
        type: "POST",
        url: "Page2.aspx/UpdateToppings",
        data: jsonString,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {

            // checking if data is not null
            if (data != null && data.d != null) {

                // holds response from the called function
                var response;
                response = $.parseJSON(data.d);


                document.getElementById("lblTotalPrice").innerHTML = "Total Cost: $" + response.description;
            }
        },
        fail: function () {

            // signify error to user in feedback
            document.getElementById("lblTotalPrice").innerHTML = "The call to the WebMethod failed!";
        }

    });
}




function chkMushroomsToppingsClicked(sel) {

    var usrTopping = document.getElementById("lblMushrooms").innerHTML;
    var selectedStatus;

    if (document.getElementById('chkMushrooms').checked) {
        selectedStatus = "on"
    } else {
        selectedStatus = "off";
    }

    var combMessage = usrTopping + "|" + selectedStatus;

    // parisng string into json string
    var jsonData = { message: combMessage };
    var jsonString = JSON.stringify(jsonData);

    jQueryXMLHttpRequest = $.ajax({
        type: "POST",
        url: "Page2.aspx/UpdateToppings",
        data: jsonString,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {

            // checking if data is not null
            if (data != null && data.d != null) {

                // holds response from the called function
                var response;
                response = $.parseJSON(data.d);


                document.getElementById("lblTotalPrice").innerHTML = "Total Cost: $" + response.description;
            }
        },
        fail: function () {

            // signify error to user in feedback
            document.getElementById("lblTotalPrice").innerHTML = "The call to the WebMethod failed!";
        }

    });
}

 

function chkPepperoniToppingsClicked(sel) {

    //var usrTopping = sel.value;

    var usrTopping = document.getElementById("lblPepperoni").innerHTML;
    //var selectedStatus = document.getElementById("chkPepperoni").value;
    var selectedStatus;

    if (document.getElementById('chkPepperoni').checked) {
        selectedStatus = "on"
    } else {
        selectedStatus = "off";
    }

    var combMessage = usrTopping + "|" + selectedStatus;

    // parisng string into json string
    var jsonData = {message: combMessage };
    var jsonString = JSON.stringify(jsonData);

    jQueryXMLHttpRequest = $.ajax({
        type: "POST",
        url: "Page2.aspx/UpdateToppings",
        data: jsonString,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {

            // checking if data is not null
            if (data != null && data.d != null) {

                // holds response from the called function
                var response;
                response = $.parseJSON(data.d);


                document.getElementById("lblTotalPrice").innerHTML = "Total Cost: $" + response.description;
            }
        },
        fail: function () {

            // signify error to user in feedback
            document.getElementById("lblTotalPrice").innerHTML = "The call to the WebMethod failed!";
        }

    });
}