#!/usr/bin/python
import json

f = open('logs.txt')
for line in iter(f):
    giorno      = line.split(" ") [0]
    mese        = line.split(" ") [1]
    ngiorno     = line.split(" ") [2]
    anno        = line.split(" ") [3]
    timestamp   = line.split(" ") [4]
    operazione  = line.split(" ") [5]
    descrizione = line.split(":",3) [3]

    data = {'data':[{'giorno': giorno, 'mese': mese, 'ngiorno': ngiorno, 'anno': anno, 'timestamp': timestamp, 'operazione': operazione, 'descrizione': descrizione}]}

    generato = json.dumps(data, indent=3)
    print(generato)
with open('log.json', 'w') as json_file:
    json.dump(generato, json_file)
f.close()
