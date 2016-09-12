

var startX = 6 * brickSize;
var endX = startX + 10 * brickSize;
var startY = 2 * brickSize;
var endY = startY + 16 * brickSize;

var currentX;
var currentY;
var rowIndex = 0;
var foundCompleteRows = false;
// Loop down each row.
for (currentY = startY; currentY < endY; currentY += brickSize)
{
    var lineComplete = true;
    for (currentX = startX; currentX < endX; currentX += brickSize)
    {
        if (!position_meeting(currentX, currentY, objBrick))
        {   
            // no brick here so line is not complete.
            lineComplete = false;
            break;
        }
    }

    if (lineComplete)
    {
        // create an array of the bricks.
        var columnIndex = 0;
        for (currentX = startX; currentX < endX; currentX += brickSize)
        {
            var brick = instance_position(currentX, currentY, objBrick);
            var test = brick.y;
            bricks[rowIndex, columnIndex] = brick;
            columnIndex++;
        }
        foundCompleteRows = true;
        rowIndex++;
    }
}

if (foundCompleteRows)
    return bricks;
return noone;
