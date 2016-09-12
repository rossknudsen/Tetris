// the only parameter passed to this script is a sprite index.
var sprite = argument0;

switch (sprite)
{
    case sprLong:
        return sprBrickRed;
    case sprSquare:
        return sprBrickBlue;
    case sprTee:
        return sprBrickGreen;
    case sprLeftZig:
        return sprBrickYellow;
    case sprRightZig:
        return sprBrickAqua;
    case sprLeftAngle:
        return sprBrickPurple;
    case sprRightAngle:
        return sprBrickOrange;
    default:
        return sprBrick;
}
