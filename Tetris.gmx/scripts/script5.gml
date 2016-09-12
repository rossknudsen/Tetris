

var bricks = scrGetCompleteLines();
if (!is_array(bricks)) 
    exit;

// loop through each row in the array.
var rowCount = array_height_2d(bricks);
var rowIndex;
for (rowIndex = 0; rowIndex < rowCount; rowIndex++)
{
    // loop through each column in the array.
    var columnCount = array_length_2d(bricks, rowIndex);
    var columnIndex;
    for (columnIndex = 0; columnIndex < columnCount; columnIndex++)
    {
        var brick = bricks[rowIndex, columnIndex];
        var bricky = brick.y;
        var brickx = brick.x;
        
        with (brick)
            instance_destroy();
        
        // move all the bricks down one.
        scrMoveBricksDown(brickx, bricky);
    }
}

// increase the score.  Get bonuses for completing more than one row at a time.
score += scorePerRow * 2 ^ rowCount;
