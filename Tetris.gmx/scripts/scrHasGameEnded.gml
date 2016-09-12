
// spawnY is the height at which bricks spawn and if there are any bricks at
// this height or higher (lower y value) then the game is over.
var spawnY = 1 * brickSize;

var i;
for (i = 0; i < instance_number(objBrick); i++)
{
    var brick = instance_find(objBrick, i);
    if (brick.y <= spawnY)
        return true;
}

return false;
