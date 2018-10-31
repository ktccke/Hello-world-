
print(2**3)


def raise_to_power(base_num, pow_num):
    result = 1
    for index in range(pow_num):
        result = result * base_num
    return result

#def raise_to_power(base_num, pow_num):
#    result = base_num**pow_num
#    return result

print(raise_to_power(3, 5))



number_grid = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
    [0]
]
# print(number_grid[2][1])  # = 8

for row in number_grid:
    #print(row)   # see just rows at a time
    for c in row:
        print(c)


