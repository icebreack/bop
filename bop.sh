#!/bin/bash

echo 'TCDWH Labs presents: Brazilian Open Port [BOP]';

sleep 2 ;

#sh bop.sh <entrada> <porta> <saida>


filename="$1";
port= "$2";
tempfileEx=".exit";
PREFIX="*.exit";
FILENAME="$3";



x=0

while read -r line
do

   x=$((x+1))

   echo "Iniciando linha $x ......... $line"

   exitfile="$3$x"

   zmap -T 4 -p $2 -o $exitfile$tempfileEx  $line ;
   sleep 2 ;

done < "$filename"

touch $FILENAME;

for b in $(ls $PREFIX); do

   echo "$(cat $b )" >> $FILENAME$tempfileEx;

   rm -rf $b;

done;

echo "$(cat $FILENAME$tempfileEx | grep -v '^$')" >> $FILENAME;

rm -rf $FILENAME$tempfileEx;
