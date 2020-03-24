Coding Task: Mars Rover

    A rover’s position and location are represented by:
        a combination of x and y coordinates
        a letter representing one of the four cardinal compass points
    The plateau is divided up into a grid to simplify navigation
        An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North

    In order to control a rover, NASA sends a simple string of letters.
        The possible letters are ‘L’, ‘R’ and ‘M’. ‘L’ and ‘R’ make the rover spin 90 degrees left or right respectively,
        without moving from its current spot. ‘M’ means move forward one grid point, and maintain the same heading.
    Assume that the square directly North from (x, y) is (x, y+1).

    Input:
    1. The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.
    2. The rest of the input is information pertaining to the rovers that have been deployed.
        2a. Each rover has two lines of input. The first line gives the rover’s position
            The position is made up of two integers and a letter separated by spaces,
            corresponding to the x and y coordinates and the rover’s orientation.
        2b. The second line is a series of instructions telling the rover how to explore the plateau.
    3. Each rover will be finished sequentially, which means that the second rover won’t start to move until the first one has finished moving.

    Output:
    - The output for each rover should be its final coordinates and heading.

    Questions:
    - What if two rovers are on the same square? -> not allowed
    - What if illegal input?
    - What if field 0x0? -> not allowed

    Optional:
    - Allow for variable amount of rovers
    - Print out ascii plateau

    Example:

    Input:
    5 5 (upper right coordinates)
    1 2 N (Rover1: position and direction)
    LMLMLMLMM (Rover1: Movement instructions)
    3 3 E (Rover2: position and direction)
    MMRMMRMRRM (Rover2: Movement instructions)

    Expected Output:
    1 3 N (Rover1)
    5 1 E (Rover2)
