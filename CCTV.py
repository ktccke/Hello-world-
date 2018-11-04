import pandas as pd


cctv = pd.read_csv('seoul.csv', encoding ='utf-8')
print(cctv.head())   # see the five rows of the csv file
print(cctv.columns)  # see the name of columns
print(cctv.columns[0])




cctv2 = cctv.rename(columns = {'기관명':'구별'})
cctv2 = cctv2.rename(columns = {'2013년도 이전':'2013년'})


print(cctv2.columns[0])
print(cctv2.head())   # see the five rows of the csv file


pop_Seoul = pd.read._csv('population.csv')

pop_Seoul[pop_Seoul['구별'].isnull()]

pop_Seoul.drop([26],inplace= True)

data_result = pd.merge(cctv2,pop_Seoul, on = '구별')

################drawing the graph
import matplotlib.pyplot as plt


plt.figure(figsize = (6,6))
plt.scatter(data_result['인구수'], data_result['소계'], s = 50)
plt.xlabel('인구수')
plt.ylabel('cctv')
plt.grid()
plt.show()



