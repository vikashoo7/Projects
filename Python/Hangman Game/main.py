########## Importing All modules
import random
from  hangman_art import  logo, stages
from  handman_word import word_list
from replit import clear

########## Variable declearation ###########
end_of_game = False
lives = 6
word_length = len(choesen_word)


## Randome chose the work from the word list
choesen_word = random.choice(word_list)

print(logo)

#### Declearing and creating list with blanks 
display = []
for letter in choesen_word:
        display += "_"

##check id user input is present in the word


while not end_of_game:
	
	###User Input ###
        guess = input("Guess a Letter: ").lower()	

	###clearing the old back logs ###		
        clear()	

	###check if letter if already gussed ###							
        if guess in display:						
                print(f"You have already gussed {guess}")

	### Adding the later to the display list ###
        for position in range(word_length):
                letter = choesen_word[position]
                if letter == guess :
                        display[position] = letter

	### Warning for wrong guess ###
        if guess not in choesen_word:
                print(f"You gussed {guess}, that is not in thw word. You loose a life..!!")
                lives -= 1
                if lives == 0:
                        end_of_game = True
                        print("You Loose..!!")

	### Print the list saparated by space ###
        print(f"{' '.join(display)}")					

	### Existing from the Game ###
        if "_"  not in display:
                end_of_game = True
                print("You Win..!!")

	### printing lives ###
        print(stages[lives])
