
import plotly.plotly as py
import plotly.graph_objs as go
from plotly.tools import FigureFactory as FF

import numpy as np
import pandas as pd
import scipy

from scipy import signal




stock_data = pd.read_csv('https://raw.githubusercontent.com/plotly/datasets/master/stockdata.csv')
df = stock_data[0:15]

table = FF.create_table(df)
py.iplot(table, filename='stockdata-peak-fitting')



x = range(15)
y_saw = signal.sawtooth(t=x)

data_sample = list(stock_data['SBUX'][0:100])
data_sample2 = list(stock_data['AAPL'][0:100])
convolve_y = signal.convolve(y_saw, data_sample2)

trace1 = go.Scatter(
    x = range(len(data_sample)),
    y = data_sample,
    mode = 'lines',
    name = 'SBUX'
)

trace2 = go.Scatter(
    x = range(len(data_sample)),
    y = data_sample2,
    mode = 'lines',
    name = 'AAPL'
)

trace3 = go.Scatter(
    x = range(len(convolve_y)),
    y = convolve_y,
    mode = 'lines',
    name = 'Convolution'
)

data = [trace1, trace2, trace3]
py.iplot(data, filename='convolution-of-two-signals')

