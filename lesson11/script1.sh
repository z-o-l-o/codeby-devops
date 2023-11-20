#!/bin/bash

#***********************************************************#
#						script1.sh							#
#					author: vlad @z0l0v						#
#						20/11/2023							#
#															#
#		Creation files in folder (for homework 10)			#
#				*). modification for lesson 11				#
#***********************************************************#

MYDIR=~/myfolder	# каталог проекта

# set -n 			# проверка на синтаксические ошибки
# set -v			# вывод каждой команды до выполнения
# set -x			# вывод результата каждой команды

# если директория существует то удалить :
if [ -d "$MYDIR" ]; 
	then rm -r $MYDIR; 
fi	

# создать директорию
mkdir $MYDIR; 


# создать файл 001 с 2мя строками :
touch $MYDIR/001
echo 'hello' > $MYDIR/001
echo $(date) >> $MYDIR/001


# создать файл 002 с правами 777 :
touch $MYDIR/002
chmod 777 $MYDIR/002

# создать файл 003 с одной рамдомной строкой длиной 20 символов :
touch $MYDIR/003
echo 'head -c 100 /dev/random |base64|tail -c21' > $MYDIR/003

# создать пустые файлы 004 и 005 :
touch $MYDIR/004
touch $MYDIR/005
