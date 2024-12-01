-module(hanoiTowers).
-export([towerOfHanoi/2]).

% These are interfaces so that the user doesnt need to know all these paramaters.
% This will solve the tower and give you the steps.
towerOfHanoi(N, yesSteps) -> solveWithSteps(N, "Left", "Right", "Middle");
% This will just say how many steps it will take.
towerOfHanoi(N, noSteps)  -> solve(N, "Left", "Right", "Middle").

% This is an interface that will print the number of moves it takes.
solveWithSteps(N, Source, Target, Auxiliary) ->
    Moves = solveWithSteps(N, Source, Target, Auxiliary, 0),
    io:format("Total moves: ~p~n", [Moves]).

solveWithSteps(0, _, _, _, Count) -> Count; % base case, return the number of steps.
solveWithSteps(N, Source, Target, Auxiliary, Count) ->
    % Recursive call, Swap the target and extra slot.
    Count1 = solveWithSteps(N - 1, Source, Auxiliary, Target, Count),
    io:format("Move disk from ~p to ~p~n", [Source, Target]), % Display the move.
    % Add the move to count.
    Count2 = Count1 + 1,
    % Swap the start and the extra slot.
    solveWithSteps(N - 1, Auxiliary, Target, Source, Count2).

% Without Steps
% This has the same algorithm as the first, we just dont print it on the way.
solve(N, Source, Target, Auxiliary) ->
    Moves = solve(N, Source, Target, Auxiliary, 0),
    io:format("Total moves: ~p~n", [Moves]).

solve(0, _, _, _, Count) -> Count;
solve(N, Source, Target, Auxiliary, Count) ->
    Count1 = solve(N - 1, Source, Auxiliary, Target, Count),
    Count2 = Count1 + 1,
    solve(N - 1, Auxiliary, Target, Source, Count2).