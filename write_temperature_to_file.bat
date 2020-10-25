@echo off
:: This is the API key provided by OpenWeatherMap. 
set APPID=<ur_api_key>
:: This is the city ID number in OpenWeatherMap for Saint John. 
set CITYID=6138517
curl "api.openweathermap.org/data/2.5/weather?id=%CITYID%&appid=%APPID%&units=imperial" | jq-win64.exe .main.temp> output.txt
