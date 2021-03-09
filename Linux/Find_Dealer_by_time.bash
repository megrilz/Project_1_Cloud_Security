cat roulette_dealer_finder_by_time.sh
#!/bin/bash
cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep "$2"

