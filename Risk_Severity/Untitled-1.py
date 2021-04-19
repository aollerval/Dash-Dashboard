def getCountries(nec, id):
    if id == 1:
        sql = ("SELECT ISO3 FROM RISK")
        cursor.execute(sql)
        data = []
        for (ISO3, INFORM_RISK) in cursor.fetchall():
            data.append([ISO3,INFORM_RISK])
        df = pd.DataFrame(data)
        df.columns = ['ISO3', 'INFORM_RISK']