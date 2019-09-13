#species.sh
# takes any number of filenames as command-line arguments, and uses cut, sort, and uniq to print a list of the unique species appearing in each of those files separately
#Usage: bash species.sh filename filename filename

cat $@ | cut -d , -f 2 | sort | uniq