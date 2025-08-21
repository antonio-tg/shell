# El objetivo de este programa es apagar el equipo automaticamente para ahorrar recursos.

cd /home/tega8574/Documentos/OLD/code/shell
fecha=$(date '+%Y/%m/%d_%T')
echo $fecha ": Se ha apado el equipo." >> shutdown.log
init 0
