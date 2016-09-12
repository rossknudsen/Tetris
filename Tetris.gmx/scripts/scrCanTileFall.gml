/// Checks whether a tile can fall one unit down.

var tile = argument0

with (tile)
{
    // test if there is an obstacle one brickSize lower.
    var obstacle = instance_place(x, y + brickSize, all);
    return (obstacle == noone);
}
