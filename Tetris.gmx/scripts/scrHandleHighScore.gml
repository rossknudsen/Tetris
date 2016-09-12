/// Check each of the high scores to determine if the result is in the top ten.

var i = 10;
repeat(10)
{
    if (highscore_value(i) < score)
    {
        // ask the user for their name.
        var name = get_string("Please enter your initials (3 letters): ", "   ");
        name = string_upper(string_letters(name));
        name = string_copy(name, 1, 3);
        
        // add the high score and reset the score.
        highscore_add(name, score);
        score = 0;
        
        exit;
    }
    i += -1;
}
