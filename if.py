
is_male = False #boolean valuable
is_tall = True

if is_male and is_tall:
    print("You are a male or tall or both")
elif is_male and not(is_tall):
    print("You are a male and short")
elif not(is_male) and is_tall:
    print("You are female and tall")
else:
    print("You are a short female")

                     ###################1hour  54min####################

#compare something full understanding of what you did

def max_num(num1, num2, num3):
    if num1 >= num2 and num1 >= num3:    #   !=   <    >    =
        return num1
    elif num2 >= num1 and num2 >=num3:
        return num2
    else :
        return num3


print(max_num(3,94,5))
print(max(3,93,23))