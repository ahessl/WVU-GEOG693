#longest.sh
#takes the name of a directory and a filename extension as its arguments, and prints out the name of the file with the most lines in that directory with that extension
# bash longest.sh directory/ ext

wc -l $1/*.$2 | sort | tail -n 2 | head -n 1 | cut -d '/' -f 2

