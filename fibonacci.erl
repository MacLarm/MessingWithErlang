-module(fibonacci).
-export([fibonacci/1]).

% fibbonaci
fibonacci(0) -> 0; % base case: fibbonaci(0) = 0
fibonacci(1) -> 1; % base case: fibbonaci(1) = 1
% If N is greate than 1, return the total of the number before and
% the one before that. This will loop until it has reached 1 or 0, then add all
% those ones and zeros in the call stack together.
fibonacci(N) when N > 1 -> fibonacci(N-1) + fibonacci(N-2).