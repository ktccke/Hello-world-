
friends = ["Jim","Karen","Kevin"]
len(friends)
#for letters in "Giraffe is animal": # for every letter in Giraffe is animal
  # print(letters)

for index in range(len(friends)):   # change valuable automatically by shift + f6
    print(friends[index])

for index in friends:   # it's the same
    print(index)
for index in range(5):
    if index == 0:
       print("first Iteration")
    else:
        print("Not First")