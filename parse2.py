#!/usr/bin/python
file = open('/var/www/html/index.html', 'w')
titolohub1 = "InspIRCd Server Hub 1 Logs"
file.write('<h1>' + titolohub1 + '</h1>\n')
file.write('<table border="5">\n')
file.close()
f = open('/var/www/html/logs/logs1.txt')
lettura = f.readlines()
for line in iter(lettura):
    giorno      = line.split(" ") [0]
    mese        = line.split(" ") [1]
    ngiorno     = line.split(" ") [2]
    anno        = line.split(" ") [3]
    timestamp   = line.split(" ") [4]
    operazione  = line.split(" ") [5]
    descrizione = line.split(":",3) [3]

    file = open('/var/www/html/index.html', 'a')
    file.write('<tr><td>' + giorno + '</td><td>' + mese + '</td><td>' + anno + '</td><td>' + ngiorno + '</td><td>' + timestamp + '</td><td>' + operazione + '</td><td>' + descrizione + '</td></tr>\n')
    file.close()

file = open('/var/www/html/index.html', 'a')
file.write('</table>\n')
titolohub2 = "InspIRCd Server HUb 2 Logs"
file.write('<h1>' + titolohub2 + '</h1>\n')
file.write('<table border="5">\n')
file.close()
f = open('/var/www/html/logs/logs2.txt')
lettura = f.readlines()
for line in iter(lettura):
    giorno      = line.split(" ") [0]
    mese        = line.split(" ") [1]
    ngiorno     = line.split(" ") [2]
    anno        = line.split(" ") [3]
    timestamp   = line.split(" ") [4]
    operazione  = line.split(" ") [5]
    descrizione = line.split(":",3) [3]

    file = open('/var/www/html/index.html', 'a')
    file.write('<tr><td>' + giorno + '</td><td>' + mese + '</td><td>' + anno + '</td><td>' + ngiorno + '</td><td>' + timestamp + '</td><td>' + operazione + '</td><td>' + descrizione + '</td></tr>\n')
    file.close()

file = open('/var/www/html/index.html', 'a')
file.write('</table>\n')
file.close()

f.close()
