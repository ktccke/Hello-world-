import os
import pandas as pd

# how to assemble two data frame
cctv = pd.read_csv('seoul.csv', encoding ='utf-8')
print(cctv.head())   # see the five rows of the csv file
print(cctv.columns)  # see the name of columns
print(cctv.columns[0])

cctv2 = cctv.rename(columns = {'기관명':'구별'})
cctv2 = cctv2.rename(columns = {'2013년도 이전':'2013년'})

print(cctv2.columns[0])
print(cctv2.head())   # see the five rows of the csv file
