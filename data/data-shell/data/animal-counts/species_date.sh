#species_date.sh
#takes a species as the first command-line argument and a directory as the second argument. Returns one file called _speciesname_.txt containing a list of dates and the number of that species seen on each date. 

#grep -w rabbit -r animals.txt | cut -d : -f 2 | cut -d , -f 1,3 > rabbit.txt



#Now replace "rabbit" and "animals.txt" with variables ($1, $2)

#Solution:
grep -w $1 -r $2 | cut -d : -f 2 | cut -d , -f 1,3  > $1.txt

