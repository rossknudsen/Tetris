// We should check if the player level has increased.
// at the moment levels are based on the line total.
var newLevel = floor(linesTotal / 10) + 1;

if (newLevel != playerLevel)
{
    // change the player's level.
    playerLevel = newLevel;
    
    // decrease the seconds between moves by 10%
    secondsPerMove *= 0.9;
    
    // play the tada sound.
    audio_play_sound(sndTada, 10, false);
}
