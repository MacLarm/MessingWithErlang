-module(factorial).
-export([factorial/1]).

% Factorials
factorial(0) -> 1; % base case: 0! = 1
% If N is greater than 0, multiply N time the previous number.
% It will then go through the call stack multiplying all the numbers together.
factorial(N) when N > 0 -> N * factorial(N - 1).