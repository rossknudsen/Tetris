
var object = argument0;
var imageDirection = argument1;

// Determine the new image index.
var newIndex = object.image_index + imageDirection;

// Check that the index is not negative or higher than the max image index.
// if it is then set the new index to zero.
if (newIndex < 0
    || newIndex > object.image_number - 1)
    newIndex = 0;
    
return newIndex;
