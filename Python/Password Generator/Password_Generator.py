import random
letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']

##########  Password shold contain the below character ####################
no_of_letters = 10
no_of_numbers = 2
no_of_symbols = 2

password_list = []

##### Generating the letter #############
for char in range(1, no_of_letters + 1):
        password_list += random.choice(letters) ####we can pass the sequence abd it will select a member in the sequence


#### Generating the symbol #############
for char in range(1, no_of_symbols + 1):
        password_list.append(random.choice(symbols)) ####i both above and this, add the element to list



#### Generating the number #############
for char in range(1, no_of_numbers + 1):
        password_list += random.choice(numbers)

random.shuffle(password_list)   ###this will shiffle and update existing list

password = ""
for char in password_list:
        password += char

print(f"Your Password is: {password}")
