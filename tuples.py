
coordinates = (4 , 5)   #tuple
# coordinates[1] = 10   can't chage like this    # immutate
print(coordinates[1])

str = [4,5]    #  list
str[1] = 10     # we can chage any component we want
print(str[1])

coordinates = [(4,5), (6,7),(80,34)]
print(coordinates[1])

######   function

def salada(name, age):
    print("Hellow Users " + name + "you are " + age)  #nothing is gonna happen , we need to call the function

salada("Mike","35")
salada("Steve","22")


