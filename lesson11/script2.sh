#!/bin/bash

#***********************************************************#
#						script2.sh							#
#					author: vlad @z0l0v						#
#						20/11/2023							#
#															#
#		Operations on files created by script1.sh:			#
#			- file counting									#
#			- change of rights	for 002							#
#			- deleting empty files							#
#			- deleting all lines except the first			#
#															#
#				*). + modification for lesson 11			#
#***********************************************************#

MYDIR=~/myfolder	# каталог проекта

# set -n			# проверка на синтаксические ошибки
# set -v			# вывод каждой команды до выполнения
# set -x			# вывод результата каждой команды


if [ -d "$MYDIR" ]; 
	then 
	
	# сколько файлов в папке :
	qtyFiles="ls $MYDIR | wc -l"
	echo "quantity files : $qtyFiles"

	# сменить права файла 002 :
	chmod 664 $MYDIR/002

	# удалить все пустые файлы :
	find $MYDIR -type f -empty -exec rm {} \;

	# удалить все строки кроме первой во всех оставшихся файлах :
	#ls $MYDIR | while read A; do echo "$A" ;done
	find $MYDIR -name '00*' | while read A; do 
		echo "head -1 $A" > "$A" ;
	done

fi	