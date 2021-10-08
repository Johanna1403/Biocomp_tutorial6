# following info is returned upon the execution of this script:
# 1) the gender, yearsExperience, and wage for the highest earner
# 2) the gender, yearsExperience, and wage for the lowest earner
# 3) the number of females in the top ten earners in this data set

# Usage: bash task2Code.sh

cat wages.csv | cut -d , -f 1,2,4 | grep -v "gender" | sort -t , -k 3 -h > task2_wages_sorted.txt
highest=$(tail -n 1 task2_wages_sorted.txt)
echo "Highest earner (gender, yearsExperience, wage): $highest"
lowest=$(head -n 1 task2_wages_sorted.txt)
echo "Lowest earner (gender, yearsExperience, wage): $lowest"
no_females=$(cat task2_wages_sorted.txt | tail -n 10 | grep -o "female" | wc -l)
echo "Number of females in top 10 earners:$no_females"

