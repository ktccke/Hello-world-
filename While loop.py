
i = 1

while i <= 5:
    print("walza")
    i = i + 1  # i+=1

print("done with loop")


   #######   guessing gmae in Python

#specifiy a secret word

secret_word = "giraffe"
guess = input("guess what is it : ")
guess_count = 0

while guess != "giraffe" and guess_count <= 1:
    guess_count += 1
    guess = input("try again : ")

if guess == "giraffe":
    print("you are right")
else:
    print("you need to study more")







