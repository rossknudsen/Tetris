/// Removes complete lines from the game and increases the score.

var startX = 6 * brickSize;
var endX = startX + 10 * brickSize;
var startY = 2 * brickSize;
var endY = startY + 16 * brickSize;

// Loop down each row.
var completeRowsCount = 0;
var currentX;
var currentY;
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
        for (currentX = startX; currentX < endX; currentX += brickSize)
        {
            var brick = instance_position(currentX, currentY, objBrick);

            // TODO destroy this brick and move the bricks down.
            var bricky = brick.y;
            var brickx = brick.x;
            
            with (brick)
                instance_destroy();
            
            // move all the bricks down one.
            scrMoveBricksDown(brickx, bricky);
        }
        completeRowsCount++;
    }
}

// increase the score.  Get bonuses for completing more than one row at a time.
if (completeRowsCount > 0)
{
    score += scorePerRow * power(2, completeRowsCount - 1);
    linesTotal += completeRowsCount;
    
    // play sound to indicate rows removed.
    audio_play_sound(sndBeep, 10, false);
}
