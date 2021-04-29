df = (
    pd.read_csv('./Prix2017.zip',
                  sep=';',
                  header=None,
                  dtype={1: str},
                  parse_dates=[5],)
    .rename(columns={0: 'station_id', 1:'zip_code',
                     3: 'latitude', 4: 'longitude',
                     5: 'date',7: 'gas_type', 8: 'price'})
    .assign(price=lambdax: x['price'] /1000,latitude=lambdax: x['latitude'] /100000,
              longitude=lambdax: x.longitude/100000,)
     )
