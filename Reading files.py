
#open("C:/Users/changju/Desktop/일본으로 가는/시계열/currency.csv", "r")

'''
data_file = open("C:\배포계획\CD (updated) of JW\E7-10.DAT", "r")
# print(data_file.readable())  # because we write "r" int the above
for first in data_file.readlines():
    print(data_file)

data_file.close() # once you open the file you need to make sure you are closing the file
'''

E10_file = open("C:\배포계획\CD (updated) of JW\E10-4.DAT", "a")

E10_file.write("\n 299")  # append something on then it can be permanent

E10_file.head()