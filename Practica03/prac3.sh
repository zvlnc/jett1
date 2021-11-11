#!/bin/bash
#GitHub_API# 
url="https://api.github.com/users/zvlnc"
echo "----------------------1st_Consult------------------------"
curl -s $url"/repos"| grep "url" | head -n 10
echo "----------------------2nd_Consult-----------------------"
curl -s $url"/followers"	#Based on 1st
echo "----------------------3ra_consulta-----------------------"
curl -s $url"/subscriptions"	#Based on 1st

#-------------------API_OpenWeather--------------------#
echo "----------------------4th_Consult-----------------------"
key="9c12201a1704c2dbeb6b10abc8b70bde"
curl -s "api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=$key"
echo -e "\n"
#-----------------------FreeToGame------------------------#
echo "----------------------5th_Consult-----------------------"
url="https://api.nasa.gov"
curl -s $url"/DONKI/CMEAnalysis?startDate=2016-09-01&endDate=2016-09-30&mostAccurateOnly=true&speed=500&halfAngle=30&catalog=ALL&api_key=DEMO_KEY"
echo -e "\n"
