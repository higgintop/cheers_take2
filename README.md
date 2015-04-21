# cheers_take2
The Ruby cheers exercise (see: elizabrock/cheers), this time 3 weeks into learning Ruby, with tests.

## Instructions
(What is the class supposed to do)

## Specifications, for non-interactive version
(How does the program work)

### Help Usage

Run the program by running './cheers.rb'

The program will print out:

> I'd cheer for you, if only I knew who you were :(

> Try again with './cheers.rb [Name] [mm/dd Birthday]'

### Regular Usage

Start the program by running './cheers.rb Abby 08/25'

The first argument is the user's name.  The second argument is the user's birthday.

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


After printing the cheer, the program outputs the number of days until the user's birthday.

* If there was no input for birthday, the program instead says:

> I would wish you a happy birthday, if I knew when that was!

* If the input can not be parsed, the program would instead say:

> I couldn't understand that.  Could you give that to me in the mm/dd format next time?

The program outputs the number of days until the user's birthday

> Awesome! Your birthday is in 45 days! Happy Birthday in advance!

## Specifications, for interactive version
(How does the program work)

Start the program by running (./cheers.rb)

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
