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

def getInformation(nec, WS, val1, val2, indicator):
    sql = "SELECT country, " + indicator + " FROM " + WS + " WHERE country = '" + val1 +"' OR country = '" + val2 + "'"

    cursor = nec.cursor(buffered = True)

    cursor.execute(sql)
    df = pd.DataFrame(cursor.fetchall())
    df.columns = ['country', indicator]

    return df

def getCountries(nec, id):
    cursor = nec.cursor(buffered=True)
    
    if id == 1:
        sql = ("SELECT country FROM RISK")
        cursor.execute(sql)
        data = []
        data = [row[0] for row in cursor.fetchall()]
    else:
        sql = ("SELECT country FROM severity")
        cursor.execute(sql)
        data = []
        data = [row[0] for row in cursor.fetchall()]
    return data

def getTableNames(nec, table):
    cursor = nec.cursor(buffered=True)

    if table == 1:
        sql = "SELECT * FROM risk"
        cursor.execute(sql)
        data = [i for i in cursor.column_names]
    else:
        sql = "SELECT * FROM severity"
        cursor.execute(sql)
        data = [i for i in cursor.column_names]
    return data
        


def getData(nec, id):
    cursor = nec.cursor(buffered=True)

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
r = getTableNames(nec,1)
s = getTableNames(nec,0)
allOptions = {
    'Risk' : r,
    'Severity' : s
    }

r = getCountries(nec,1)
s = getCountries(nec,0)

country_names = {
    'Risk' : r,
    'Severity' : s
}

## Creating the Geo Graph
fig = px.choropleth()
fig.update_geos(showcountries = True)
fig.update_layout(height=600, margin={"r":0,"t":0,"l":0,"b":0})

##Barplot creation
fig_b = px.bar()
fig.update_layout(height=600, margin={"r":0,"t":0,"l":0,"b":0})
    
    
"""Dashboard App"""

##CSS Style Sheet
external_stylesheets = ['style.css']

##App declaration
app = dash.Dash(__name__, external_stylesheets = external_stylesheets)

##App (HTML CODE)
app.layout = html.Div([
    html.H1("Risk/Severity Index", title = "G.O.A.T."),
    
    ##Radio Button for selecting the Indicator (Severity or Risk)
    html.Div( className = 'container',
        children =[html.Div(id = 'radiobutton-selection', className = 'two columns', children=[
            dcc.RadioItems(
                id = 'WorksheetSelect',
                options = [{'value': 'Severity' , 'label' : 'Severity'},
                        {'value': 'Risk' , 'label' : 'Risk'}],
                value = "Risk"
        )]),
        
        ##Dropdown List for the indicators
        html.Div(id = 'dropdown-selection', className='two columns', children = [
            dcc.Dropdown(
                id = 'indicators',
                options = [{'label' : k, 'value' : k} for k in allOptions.keys()],
                value = "Risk",
                style = {
                    'width' : '45%'
                }
        )])]
    ),

    #Dropdown list for the countries relevant to the indicator
    html.Div(id = 'dropdown-selection2', className='two columns', children = [
        dcc.Dropdown(
            id = 'countries',
            options = [{'label' : k, 'value' : k} for k in country_names.keys()],
            value = 'Risk',
            style = {
                'width' : '45%'
            }
    )]),

    html.Div(id = 'dropdown-selection3', className='two columns', children = [
        dcc.Dropdown(
            id = 'countries2',
            options = [{'label' : k, 'value' : k} for k in country_names.keys()],
            value = 'Risk',
            style = {
                'width' : '45%'
            }
    )]),


        dcc.Graph(id = 'map',figure=fig), ##Map

    html.Div(
        children = [
            dcc.Graph(id = 'barp', figure = fig_b)
        ]
    )

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

@app.callback(
    Output('countries', 'options'),
    [Input('WorksheetSelect','value')])
def update_dropdown_countries(k):
    return [{'label' : i, 'value' : i} for i in country_names[k]]

@app.callback(
    Output('countries', 'value'),
    Input('countries', 'options'))
def setValuesCountries(avopts2):
    return avopts2[0]['value']

@app.callback(
    Output('countries2', 'options'),
    [Input('WorksheetSelect','value')])
def update_dropdown_countries2(k):
    return [{'label' : i, 'value' : i} for i in country_names[k]]

@app.callback(
    Output('countries2', 'value'),
    Input('countries2', 'options'))
def setValuesCountries2(avopts2):
    return avopts2[0]['value']

@app.callback(
    Output('barp', 'figure'),
    [Input('countries', 'value'),
     Input('countries2', 'value'),
     Input('WorksheetSelect', 'value') ])
def updateIndicatorGraph(val1,val2,WS):
    


if __name__ == '__main__':
    app.run_server(debug=True)
