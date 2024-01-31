// Define the $() function
function $(selector) {
    return document.querySelector(selector);
}

// Event handler for DOMContentLoaded
document.addEventListener('DOMContentLoaded', function() {
    // Attach the calculate function to the submit event of the form
    $('form').addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent the default form submission
        calculate(); // Call the calculate function
    });

    // Move focus to the product cost text box
    $('#uInput').focus();
});

// Function to validate and initiate the shipping calculation
function calculate() {
    // Parse the product cost
    const productCost = parseFloat($('#uInput').value);

    // Check if the product cost is a valid number and greater than 0
    if (!isNaN(productCost) && productCost > 0) {
        // Call the calculateShipping function with the product cost
        calculateShipping(productCost);      
    } 
    else {
        // Show an alert for invalid product cost
        alert('Please enter a valid product cost greater than zero.');
        // Leave focus on product cost
        $('#uInput').focus();
    }
}

// Function to calculate shipping cost
function calculateShipping(productCost) {
    let shippingPercentage;

    if (productCost <= 50) {
        shippingPercentage = 0.2;
        
    } else if (productCost <= 200) {
        shippingPercentage = 0.18;
        
    } else if (productCost <= 500) {
        shippingPercentage = 0.15;
        
    } else if (productCost <= 1000) {
        shippingPercentage = 0.12;
        
    } else {
        shippingPercentage = 0.08;
    }

    const shippingCost = productCost * shippingPercentage;
    const totalCost = productCost + shippingCost;

    // Update the total cost input field
    $('#total').value = totalCost.toFixed(2);
}




