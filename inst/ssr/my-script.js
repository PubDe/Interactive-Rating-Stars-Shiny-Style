    // JavaScript code to initialize the slider and handle its events
    $(document).ready(function() {
        // Initialize the Ion.RangeSlider for the slider input
        $(".js-star-rating").shinyStarRating({
          type: "single", // Specifies single or double slider
          min: 0,         // Minimum value
          max: 5,         // Maximum value
          from: 0,        // Initial value
          step: 0.5,      // Step size
          grid: true,     // Show grid
          grid_num: 10,   // Number of grid points
          grid_snap: false, // Snap to grid
          skin: "shiny"   // Use the "shiny" skin
        });
  
        // Event handler for when the slider value changes
        $(".js-star-rating").on("change", function() {
          var value = $(this).val(); // Get the current value of the slider
          console.log("Slider value changed to: " + value);
          // Add your custom logic here to handle the slider value change
        });
      });