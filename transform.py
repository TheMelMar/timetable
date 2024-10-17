##load SBB-data.json
import json
import tempfile
import os

file = tempfile.TemporaryFile()

with open('SBB-data.json') as json_file:
    data=json.load(json_file)



## extract Trains
trains = []

for entity in data:
    train = {
        'fahrt_bezeichner' : entity['fahrt_bezeichner'],
        'linien_text': entity['linien_text']
    }
    if train in trains:
        pass
    else:
        trains.append(train)

print('#trains: ' + str(len(trains)))


## write file .docker-entrypoint.d/10-trains.sql
## write file .docker-entrypoint.d/20-stations.sql


with open('./50-train-inserts.sql', 'w') as file:
    file.write('INSERT INTO train VALUES \n')

    values = map( lambda train: "('" + train['fahrt_bezeichner'] + "','" + train["linien_text"] + "')" + "\n", trains)

    file.write(",".join(values))

    #file.seek(0, os.SEEK_END)
    #size=file.tell()
    #file.truncate(size-1)
    file.write(';')



## INSERT INTO Trains VALUES (),(),(), ......