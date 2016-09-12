/// Randomly chooses the next brick.

var choice = irandom(6);
switch (choice)
{
    case 0: 
        return sprLong;
    case 1: 
        return sprSquare;
    case 2: 
        return sprTee;
    case 3: 
        return sprLeftZig;
    case 4: 
        return sprRightZig;
    case 5:
        return sprLeftAngle;
    case 6:
        return sprRightAngle;
}
