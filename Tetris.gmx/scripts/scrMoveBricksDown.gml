

brickx = argument0;
bricky = argument1;

// find all the bricks above this height.
var currentY;
for (currentY = bricky - brickSize; currentY >= 0; currentY += -brickSize)
{
    var brick = instance_position(brickx, currentY, objBrick);
    if (brick != noone)
        brick.y += brickSize;
}
