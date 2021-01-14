
# Tic Tac Toe

## About

Players take turns placing an "X" or an "O" on a 3 x 3 grid. Tokens cannot be placed in the same square.
Play continues until one player has 3 tokens in a row or the board is full. 

## Requirements

- board is to be displayed before each players turn
- tokens are to be "X" or "O"
- each player is to pick a grid location to place their token
- token is then to be placed on the board
- when a player has 3 of their tokens in a row they are declared the winner
- if the board is full and there is no winner, the game is declared a draw

### Validation Checks

- is the grid position valid
- is the square position already taken
- is there a winner
- are all squares occupied

### Winning Combinations

- top row
- middle row
- bottom row
- left column
- centre column
- right column
- left diagonal
- right diagonal

## Game flow example

Insert game flow example here...


## Usage

- The board is displayed on the CLI tool
- The grid is indexed from 1 - 9 from left to right, top to bottom
- When prompted "Please enter 1-9:", enter a number from 1 - 9 depending on which position you would like to place your token
- the game will place the token depending on if the the move is valid
- the game automatically works out whose go it is
- the game is over when one player has a winning combination or the board is filled

## Installation

Insert system requirements here....

## Flowchart

Insert flowchart here....