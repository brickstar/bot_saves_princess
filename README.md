
# HackerRank Bot Saves Princess
## About
This repo contains a system that solves two of HackerRank’s Artificial Intelligence/Bot Building problems: [Bot Saves Princess](https://www.hackerrank.com/challenges/saveprincess/problem) and [Bot Saves Princess - 2](https://www.hackerrank.com/challenges/saveprincess2/problem).

## Local Setup

```
$ git clone git@github.com:brickstar/bot_saves_princess.git
$ cd bot_saves_princess/
$ gem install bundler
$ bundle
```
## Versions
* Ruby 2.4.1
* RSpec 3.8
* Bundler 2.0.1
## Testing
Run the test suite locally with
```
$ rspec
```
## Play locally
### For Bot Saves Princess, run:
```
$ ruby hackerrank_bot_saves_princess.rb
```
#### Input format

The first line contains an odd integer N (3 <= N < 100) denoting the size of the grid.  This is followed by an NxN grid. Each cell is denoted by '-' (ascii value: 45).  The bot position is denoted by 'm' and the princess position is denoted by 'p'.

Grid is indexed using [Matrix Convention](https://www.hackerrank.com/scoring/board-convention).

#### Output format

Print out the moves you will take to rescue the princess in one go.  The moves must be separated by '\n', a newline. The valid moves are LEFT or RIGHT or UP or DOWN.

#### Sample input
```
3
---
-m-
p--
```
#### Sample output
```
DOWN
LEFT
```
___
### For Bot Saves Princess - 2, run:
```
$ ruby hackerrank_bot_saves_princess_2.rb
```
#### Input format

The first line of the input is N (<100), the size of the board (NxN).  The second line of the input contains two space separated integers, which is the position of the bot.

Grid is indexed using [Matrix Convention](https://www.hackerrank.com/scoring/board-convention).

The position of the princess is indicated by the character 'p' and the position of the bot is indicated by the character 'm' and each cell is denoted by '-' (ascii value: 45).
#### Output format

Output only the **next** move you take to rescue the princess.  Valid moves are LEFT, RIGHT, UP or DOWN

#### Sample input
```
5
2 3
-----
-----
p--m-
-----
-----
```
#### Sample output
```
LEFT
```
#### Resultant State
```
-----
-----
p-m--
-----
-----
```
## HackerRank
Two files at the bottom of this repo contain compiled code to be pasted into HackerRank’s embedded online editor.

### To run these files against HackerRank’s test suite:

#### Bot Saves Pincess
Navigate to:

[Bot Saves Princess](https://www.hackerrank.com/challenges/saveprincess/problem)

Select all of the code in the embedded editor labeled ```Current Buffer``` and replace it with the contents of:
```
hackerrank_bot_saves_princess.rb
```
___
#### Bot Saves Princess - 2
Navigate to:
[Bot Saves Princess - 2](https://www.hackerrank.com/challenges/saveprincess2/problem)

Select all of the code in the embedded editor labeled ```Current Buffer``` and replace it with the contents of:
```
hackerrank_bot_saves_princess_2.rb
```

## Notes on Design
One of the reasons I love writing Ruby code is taking advantage of how naturally the language can lend itself to readability.  Developer empathy was one of my main areas of focus while implementing these solutions--I wanted to write code that is intuitive and readable for anyone who steps into the codebase.  Another area of focus was OOP design.  I built the system as I imagined it might look as a real life, tangible board game.  

## Next Steps
One of the objectives outlined in the spec for these challenges was to have a solution that can be pasted into HackerRank's online embedded code editor.  In this editor, the user input is handled by HackerRank's test suite.  This caused me to focus less on the REPL and gameplay aspects of the implementation.  Next steps for this project would be to build out the user interface and make the internal test suite more robust in regards to error handling of user input.
