/// Returns the sprite for a given object_id.
var objectId = argument0;

switch (objectId)
{
    case objLong:
        return sprLong;
    case objSquare:
        return sprSquare;
    case objTee:
        return sprTee;
    case objLeftZig:
        return sprLeftZig;
    case objRightZig:
        return sprRightZig;
    case objLeftAngle:
        return sprLeftAngle;
    case objRightAngle:
        return sprRightAngle;
    default:
        return noone;
}
