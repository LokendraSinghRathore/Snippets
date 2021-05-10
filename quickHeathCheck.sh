#
#
#
red='\033[0;31m'
green='\033[0;32m'
while IFS=" " read -r value1 value2 remainder
do
	status=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "https://$value1")
	if [ $status == 200 ]
	then
		printf "${green}$value2\t"
	else
		printf "${red}$value2\t"
	fi
done < "input.txt"
