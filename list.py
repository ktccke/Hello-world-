####lists 1h 3min

friends  = ["Kevin", "Karen", "kyun", "Oscar", "toby"]
friends[1] = "mike"
print(friends[1])
print(friends.index("kyun"))

friends.sort()
print(friends)  #Capital letter first

friends = [1,"kevin",3]  # we don't have to unify the form
print(friends[2])

####list function

lucky_numbers = [4, 8, 15, 2, 7]
friends = ["Kevin", "Karen" , "hong"]
print(friends)

friends.extend(lucky_numbers)
print(friends)

friends.append("Creed")
print(friends)

friends.insert(1,"kelly")
print(friends)

friends.remove("Karen")
print(friends)

#friends.clear()
print(friends)

friends.pop()  #remove last one in the list actually opposite of append
print(friends)

# print(friends.index("Jim"))
friends.append("Jim")
friends.append("Jim")
print(friends.count("Jim")) #how many times jim out in that list


friends2 = friends.copy()
print(friends2)
