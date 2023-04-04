while IFS=" " read -r value1 value2 remainder
do
	status=$(curl --cert-status -v https://$value1 2>&1 | awk 'BEGIN { cert=0 } /^\* Server certificate:/ { cert=1 } /^\*/ { if (cert) print }'|grep expire |cut -c 17-40)
	
		printf "$value1\t" >> out.txt
	
		printf "$status\n" >> out.txt
	
done < "input.txt"
