# This code takes the input file wages.csv and creates a file namedwages_sorted.txt
# wages_sorted.txt contains gender and yearsExperience columns separated by space
# the rows are sorted first by gender and then by yearsExperience

# Usage: bash task1Code.sh InputFilename OutputFilename

cat $1 | cut -d , -f 1,2 | tr -s "," " " | sort -V | uniq | grep -v "gender" > $2
