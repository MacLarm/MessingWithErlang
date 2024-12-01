# Overview

I wanted to try my hand at writing in a purely functional language. I have written
programs in the functional style in other languages, but never in a true functional
language. I learned about Erlang and decided it would be a good starting point. 

As far as the program itself, it was more about tinkering and learning the language
than it was about writing some useful progarm. The basic algorithms and structure of
it can all be readily found on the internet. 
I made:
    1. A fibonacci number calulator
    2. A factorial calulator
    3. A solver for the [Hanoi Tower](https://en.wikipedia.org/wiki/Tower_of_Hanoi) problem 

[Software Demo Video](http://youtube.link.goes.here)

# Development Environment

I used the most basic version of Erlang. I did not use rebar3 or other libraries/tools.
I wrote all my code in Visual Studio Code.
To run the program:
* Navigate to the folder 
* Use type the commang "erl" in the terminal to launch the erlang shell
* Compile main using "c(main)."
* Run the main function using "main:main()."
Once it has been compiled you can run the main function as many times as you would like.
To exit:
* type ctr + c
* type 'a' to abort.

# Useful Websites

* [Erlang Documentation](https://www.erlang.org/doc/readme.html)
* [Microsoft Copiolot](https://copilot.microsoft.com/)

# Future Work

* Improve UI. There could be better options for keeping it running until the user decides to exit.
* Improve error handling. My getNum function can detect if you have entered something that isnt a number, but I have no way to keep the user from selecting numbers out of bounds.
* Find more effecient solutions to recurive functions. (Especially hanoi towers. Type 100 and it bricks the program for hours.)
