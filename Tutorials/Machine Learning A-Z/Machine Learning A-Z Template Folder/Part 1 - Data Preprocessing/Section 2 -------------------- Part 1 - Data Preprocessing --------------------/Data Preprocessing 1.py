# -*- coding: utf-8 -*-
"""
Created on Fri Aug  4 16:56:29 2017

@author: Nandy
"""
#Import the libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

#Import the dataset
dataset=pd.read_csv('data.csv')
X=dataset.iloc[:, :-1].values
Y=dataset.iloc[:, 3].values

#Missing values
from sklearn.preprocessing import Imputer
imputer= Imputer(missing_values="NaN",strategy="mean",axis=0)
imputer.fit(X[: ,1:3])
X[: ,1:3]=imputer.transform(X[: ,1:3])

from sklearn.preprocessing import LabelEncoder, OneHotEncoder
labelencoder_x=LabelEncoder()
X[:,0]=labelencoder_x.fit_transform(X[: ,0])
onehotencoder=OneHotEncoder(categorical_features=[0])
X=onehotencoder.fit_transform(X).toarray()

from sklearn.cross_validation import train_test_split
X_train,X_test,Y_train,Y_test=train_test_split(X,Y,test_size=0.2,random_state=0)

