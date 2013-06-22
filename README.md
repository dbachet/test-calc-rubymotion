test-calc-rubymotion
====================

This is an app using RubyMotion for iOS. 

The main goal of this app is to show an easy example with an external module and its specs.

That should take a string from a text field and process it when the 'Convert' button is tapped.

The input string is processed this way:

For each char in the expression from the left:
- if the char is a digit store it on the stack
- if the char is an operator (+,*) then take the last two values of the stack and make the calculation
- push the result on the stack



