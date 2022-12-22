
## Import Libraries
import numpy as np
import pandas as pd



## Test 1 Connection to Data Base
weight_df = pd.read_csv('weight_df.csv')
workout_df = pd.read_csv('workout_df.csv')

## View Data Frame 
print(weight_df)