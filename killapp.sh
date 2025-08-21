#!/bin/bash
# El objetivo de este script es analizar la memoria disponible y en caso de ser necesario eliminar la app que más memoría este consumiendo.

# Se cambia al directorio de trabajo
cd /home/tega8574/Documentos/OLD/code/shell/killapp

# Se define el limite 13GB
n=13.0

# Se obtiene la memoria usada.
m=$(free -h | grep "Mem" | awk '{print $3}' | sed 's/\,/\./g' | sed 's/Gi//g')

# Se compara la memoría libre con el limite, si es menor se elimina el proceso que más memoria consume.
if [ "$(echo "$m > $n" | bc)" = "1" ]; then
  echo 'Se ejecuta el kill'
  ps aux --sort=-%mem | head -n 2 | grep -v "grep" | grep "tega8574" | awk '{print "kill -9 " $2}' | sh
  fecha=$(date '+%Y/%m/%d_%T')
  app_2_kill=$(ps aux --sort=-%mem | head -n 2 | grep -v "grep" | grep "tega8574")
  echo $fecha:$app_2_kill >> killapp.log
fi
