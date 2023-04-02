#!/bin/bash
stuid=("2020095623045" "2020095623026" )
rnd1=0
rnd2=0

while [[ $rnd1 = $rnd2 ]]
do
rnd1=$[$RANDOM%${#stuid[*]}]
#rnd2=$[$RANDOM%${#stuid[*]}]
done

echo ${stuid[$rnd1]}
echo ${stuid[$rnd2]}

# 该配置为双播(可自行增加多播数)
mentohust -u${stuid[$rnd1]} -ppan2020095623045 -nmacvlan1 -b3 -o10.0.6.247 -a1 -d0 -v6.82 -cdhclient 
rm -rf /tmp/mentohust.pid
sleep 1
#mentohust -u${stuid[$rnd2]} -pabc1234 -nmacvlan2 -b3 -o223.5.5.5 -a1 -d0 -v6.82 -cdhclient
#rm -rf /tmp/mentohust.pid
