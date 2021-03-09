Scenario
You have just been hired by Lucky Duck Casino as a security analyst.
Lucky Duck has lost a significant amount of money on the roulette tables over the last month.
The largest losses occurred on March 10, 12, and 15.
Your manager believes there is a player working with a Lucky Duck dealer to steal money at the roulette tables.
The casino has a large database with data on wins and losses, player analysis, and dealer schedules.
You are tasked with navigating, modifying, and analyzing these data files to gather evidence on the rogue player and dealer.
You will prepare several evidence files to assist the prosecution.
You must work quickly as Lucky Duck can't afford any more losses.

In case there is future fraud on the other Lucky Duck games, create a shell script called roulette_dealer_finder_by_time_and_game.sh that has the three following arguments:

Specific time
Specific date
Casino game being played

cat roulette_dealer_finder_by_time.sh
#!/bin/bash
cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep "$2"

Develop a shell script called roulette_dealer_finder_by_time.sh that can analyze the employee schedule to easily find the roulette dealer at a specific time.
 
 cat roulette_dealer_finder_by_time_and_game.sh 
 #!/bin/bash

if [ $1 -eq 1 ]
then 

	grep  "$2 $3" *$4*_Dealer_schedule | awk '{print $3, $4}'

elif [$1 -eq 2 ] 
then 

	grep "$2 $3" *$4*_Dealer_schedule | awk '{print $5, $6}'

elif [ $1 -eq 3 ]
then 

	grep "$2 $3" *$4*_Dealer_schedule | awk '{print $7, $8}'
fi
