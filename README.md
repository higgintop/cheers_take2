# cheers_take2
The Ruby cheers exercise (see: elizabrock/cheers), this time 3 weeks into learning Ruby, with tests.

## Instructions
(What is the class supposed to do)

## Specifications
(How does the program work)

The program should ask:

> Hello! What is your name?

The user types in their name, for example:

> Abby

The program outputs a cheer in the following format:

> Give me an... A

> Give me a... B

> Give me a... B

> Give me a... Y

> Abby's just GRAND!

* Follow the proper grammatical rules for 'a' and 'an'
* Ignore all special characters (i.e. non-word characters) when printing the cheer (Give me a ...)
* Don't ignore special characters for the last outputted line (__'s just GRAND!)
* Print the user's name out as it was originally input for the "just GRAND" line 
* If there was no input, ask again until valid input is provided

After printing out the user's cheer, the program asks:

> Hey, Abby, what's your birthday? (mm/dd)

The user types in their birthday

> 08/25

* If there was no input, ask again until valid input is provided
* If the input can not be parsed, the program tries again but with the prompt:

> I couldn't understand that.  Could you give that to me in the mm/dd format?

The program outputs the number of days until the user's birthday

> Awesome! Your birthday is in 45 days! Happy Birthday in advance!
