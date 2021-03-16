import dash
import dash_core_components as dcc
import dash_html_components as html
import plotly.graph_objects as go
import mysql.connector as con
import pandas as pd
import plotly.express as px
from dash.dependencies import Input, Output
import numpy as np

nec = con.connect(
    user = 'admin',
    password = 'admin',
    database = 'risk_severity'
)


def getData(nec, id):
    cursor = nec.cursor()

    if id == 1:
        sql = ("SELECT ISO3, INFORM_RISK FROM RISK")
        cursor.execute(sql)
        data = []
        for (ISO3, INFORM_RISK) in cursor.fetchall():
            data.append([ISO3,INFORM_RISK])
        df = pd.DataFrame(data)
        df.columns = ['ISO3', 'INFORM_RISK']
    else:
        sql = ("SELECT ISO3, INFORM_Severity_Index FROM SEVERITY WHERE INFORM_Severity_Index <> 'x' ORDER BY 2 DESC")
        cursor.execute(sql)
        data = []
        for (ISO3, INFORM_Severity_Index) in cursor.fetchall():
            data.append([ISO3,INFORM_Severity_Index])
        df = pd.DataFrame(data)
        df.columns = ['ISO3', 'SEVERITY_INDEX']

    df = df.to_dict('dict')
    
    return df



##Options for the dropdown list depending on the selction of either Severity or Risk
allOptions = {
     'Risk' : ['Hazard & Exposure','Vulnerability','Lack of Coping Capacity'],
    'Severity' : ['Impact of The Crisis','Conditions of the people affected','Complexity of the crisis']
    }
    
## Creating the Geo Graph
fig = px.choropleth()
fig.update_geos(showcountries = True)
fig.update_layout(height=600, margin={"r":0,"t":0,"l":0,"b":0})    
    
    
"""Dashboard App"""

##CSS Style Sheet
external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']

##App declaration
app = dash.Dash(__name__, external_stylesheets = external_stylesheets)

##App (HTML CODE)
app.layout = html.Div([
    html.H1("Risk/Severity Index", title = "G.O.A.T."),
    
    ##Radio Button for selecting the Indicator (Severity or Risk)
    dcc.RadioItems(
        id = 'WorksheetSelect',
        options = [{'value': 'Severity' , 'label' : 'Severity'},
                   {'value': 'Risk' , 'label' : 'Risk'}
                  ],
        
        value = "Risk",
    ),
    html.Div(id = 'RadioItem-Selection'),
    
    ##Dropdown List for the 
    dcc.Dropdown(
        id = 'indicators',
        options = [{'label' : k, 'value' : k} for k in allOptions.keys()],
        value = "Risk",
        style = {
            'width' : '45%'
        }
    ),
        html.Div(id = 'dropdown-selection'),
        
        dcc.Graph(id = 'map',figure=fig), ##Map
    ])

@app.callback([Output('map', 'figure')],
    [Input('WorksheetSelect', 'value'),
    Input('indicators', 'value'),
    Input('map', 'figure')])

def update_output(WS,IS,fig):
    fig = go.Figure(fig)
    if WS == 'Risk':
        df = getData(nec,1)
        fig = px.choropleth(df, locations='ISO3', color = 'INFORM_RISK',
        color_continuous_scale=px.colors.diverging.Temps,
        )

    if WS == 'Severity':
        df = getData(nec,2)
        fig = px.choropleth(df, locations='ISO3', color ='SEVERITY_INDEX',
        color_continuous_scale=px.colors.diverging.RdYlBu,
        )

    return [fig] ##agregar go.figure

@app.callback(
    Output('indicators', 'options'),
    [Input('WorksheetSelect','value')])
def update_dropdown(selec):
    return [{'label' : i, 'value' : i} for i in allOptions[selec]]

@app.callback(
    Output('indicators', 'value'),
    Input('indicators', 'options'))
def setValues(avopts):
    return avopts[0]['value']


if __name__ == '__main__':
    app.run_server(debug=True)
