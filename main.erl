-module(main).
-export([main/0]).

main() ->
    description(), % Print description
    case getNum("-> ") of  % Let user select which they want to use.
        1 -> % For fibonaci
            % Get the input from the user.
            Number = getNum("Which fibonacci number do you want to see? "),
            fibonacci:fibonacci(Number); % Call the function
        2 -> 
            % get the input from the user.
            Number = getNum("Enter the number to find its factorial: "),
            factorial:factorial(Number); % call the function
        3 -> 
            % get the input from the user
            Number = getNum("Enter the number of disks in the tower: "),
            hanoiTowers:towerOfHanoi(Number, noSteps); % call the funciton.
        4 -> 
            % If they want to quit.
            io:format("Thanks for checking it out! ~n")
    end.

% Print a project description to the screen.
description() -> 
    io:format("
Welcome to the random colection of things I made! ~n 
    Pick one of these things: ~n
    1. Find the nth number of the fibonacci sequence
    2. Find the answer to n! (factorials)
    3. Solve the Hanoi Towers 
        a. one that just tells you the number of moves you need 
        b. one that will show you each step.
    4. Quit program. ~n").


% Get a number from the user. 
% Paramater: Text - a string that that will prompt the input.
getNum(Text) ->
    io:format(Text), % prompt input
    Input = io:get_line(""), % get input
    TrimmedInput = string:trim(Input), % trim extra stuff off
    % Use a try catch block in case the user doesn't input an actual number.
    try 
        % Convert the trimmed input into an integer
        {Integer, []} = string:to_integer(TrimmedInput), 
        Integer % return the number.
    catch % If something went wrong.
        error:_ ->
            % give error message
            io:format("Invalid input. Please enter a valid number.~n"),
            getNum(Text) % start over.
    end.
