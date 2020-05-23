#!/usr/bin/python
file = open('index.html', 'w')
titolo = "InspIRCd Server Logs"
file.write('<h1>' + titolo + '</h1>\n')
file.write('<table border="5">\n')
file.close()
f = open('logs/logs.txt')
for line in iter(f):
    giorno      = line.split(" ") [0]
    mese        = line.split(" ") [1]
    ngiorno     = line.split(" ") [2]
    anno        = line.split(" ") [3]
    timestamp   = line.split(" ") [4]
    operazione  = line.split(" ") [5]
    descrizione = line.split(":",3) [3]

    file = open('index.html', 'a')
    file.write('<tr><td>' + giorno + '</td><td>' + mese + '</td><td>' + anno + '</td><td>' + ngiorno + '</td><td>' + timestamp + '</td><td>' + operazione + '</td><td>' + descrizione + '</td></tr>\n')
    file.close()

file = open('index.html', 'a')
file.write('</table>\n')
file.close()

f.close()
