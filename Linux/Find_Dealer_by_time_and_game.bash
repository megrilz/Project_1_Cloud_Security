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
