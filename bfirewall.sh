#!/bin/bash
function bypass(){
echo "Welcome to Firewall Bypass Tool"
echo -ne "Enter target I/P : "
read ip

while true
	do
		echo
		echo "########################################################################################"
		echo "Firewall Bypass type-"
		echo "1) SYN Scan"
		echo "2) FIN Scan"
		echo "3) NULL Scan"
		echo "4) XMAS Scan"
		echo "5) Fragment Scan"
		echo "6) Data Length Scan"
		echo "7) TTL Scan"
		echo "8) Source Port Scan"
		echo "9) Decoy Scan"
		echo "10) Stealth Scan"
		echo "11) Exit"
		echo "########################################################################################"
		echo -ne "Select Option for Scan: "
		read scan
		case $scan in 
			1)echo "Option 1- SYN Scan Selected"
			 nmap -sT -p20-1000 $ip
			 echo "Scan Compleated Sucessfully....."    					
			;;
			2)echo "Option 2- FIN Scan Selected"
			 nmap -sF -p20-1000 $ip
			 echo "Scan Compleated Sucessfully....."						
			;;
			3)echo "Option 3- NULL Scan Selected"
			 nmap -sN -p20-1000 $ip
			 echo "Scan Compleated Sucessfully....."						
			;;
			4)echo "Option 4- XMAS Scan Selected"
			 nmap -sX -p20-1000 $ip
			 echo "Scan Compleated Sucessfully....."							
			;;
			5)echo "Option 5- Fragment Scan Selected"
			 nmap -f -p20-1000 $ip
			 echo "Scan Compleated Sucessfully....."						
			;;
			6)echo "Option 6- Data Length Scan Selected"
			 echo -ne "Enter the length of packet - "
			 read length							
			 nmap --data-length $length -p20-1000 $ip
			 echo "Scan Compleated Sucessfully....."
			;;
			7)echo "Option 7- TTL Scan Selected"
			 nmap -p20-1000 $ip						
			 echo -ne "Enter the TTL of packet - "
			 read ttl
			 echo
			 nmap -p20-1000 -ttl ttl $ip
			 echo "Scan Compleated Sucessfully....." 
			;;
			8)echo "Option 8- Source Port Scan Selected"
			 echo -ne "Enter the port no. to be attacked - "
			 read port
			 echo "Scan Compleated Sucessfully....."							
			;;
			9)echo "Option 9- Decoy Scan Selected"
			 echo "Enter the fake IP address "
			 read ip1
			 nmap -D $ip1 $ip					        #tail -f /var/log/syslog
			 echo "Scan Compleated Sucessfully....."
			;;
			10)echo "Option 10- Stealth Scan Selected"                     
			 nmap -sS -p20-1000 $ip
			 echo "Scan Compleated Sucessfully....."						
		        ;;
		        11)echo "Exiting....." 
		         break
			;;
			*)
		esac
	done
echo "Scan Completed..................."
echo "########################################################################################"
}
while true
    do
        bypass
        echo
        break 
    done

