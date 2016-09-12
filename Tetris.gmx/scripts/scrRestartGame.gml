// reset the game parameters.

// check if we are in the play room.  If not go to that room.
if (room == rmPlay)
    room_restart();
else
    room_goto(rmPlay);
