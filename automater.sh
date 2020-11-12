#!/bin/bash
while [[ 1 ]]; do
	clear
	echo "   #                                                          "
	echo "  # #   #    # #####  ####  #    #   ##   ##### ###### #####  "
	echo " #   #  #    #   #   #    # ##  ##  #  #    #   #      #    # "
	echo "#     # #    #   #   #    # # ## # #    #   #   #####  #    # "
	echo "####### #    #   #   #    # #    # ######   #   #      #####  "
	echo "#     # #    #   #   #    # #    # #    #   #   #      #   #   v.3.0.0"
	echo "#     #  ####    #    ####  #    # #    #   #   ###### #    #  By @gasmat"
	echo "---------------------------------OPTIONS---------------------------------"
	echo "|INFORMATION GATHERING  | DATABASE           | USEFUL COMMAND           |"
	echo "|1.  metagoofil         | 12. sqlmap         | help                     |"
	echo "|2.  whois              |--------------------| update                   |"
	echo "|3.  deepmagic          | EXPLOIT            | install                  |"
	echo "|4.  hping3             | 13. kwetza         | ip                       |"
	echo "|-----------------------|--------------------| clear                    |"
	echo "|VULNERABILITY SCANNER  | PASSWORD           | exit                     |"
	echo "|5.  nmap               | 14. hydra          |                          |"
	echo "|6.  nikto              | 15. cupp           |                          |"
	echo "|7.  wafw00f            |--------------------|                          |"
	echo "|8.  lbd                | WIFI               |                          |"
	echo "|-----------------------| 16. aircrack-ng    |                          |"
	echo "|WEBSITE                |                    |                          |"
	echo "|9.  weevely            |                    |                          |"
	echo "|10. wpscan             |                    |                          |"
	echo "|11. httrack            |                    |                          |"
	echo "-------------------------------------------------------------------------"
	read -p "Automater>>>" input
	if [[ $input = "1" ]]; then
		clear
	  figlet -f banner metagoofil
		domain=""
	  file_type=""
		echo ""
		echo "This module collects file from the website and shown: owner, the creation date, etc..."
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/metagoofil>>>" command
			if [[ $command = "help" ]]; then
				echo "This module collects file from the website and shown: owner, the creation date, etc..."
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "domain              yes                   $domain"
				echo "file type           yes                   $file_type"
				echo ""
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"domain"* ]]; then
					domain=${module/#"domain "}
					echo "domain ==> $domain"
				elif [[ $module = *"file type"* ]]; then
					file_type=${module/#"file type "}
					echo "file type ==> $file_type"
				fi
			elif [[ $command = "execute" ]]; then
				echo "[+] Executing the command: metagoofil -d $domain -f $file_type"
				eval "metagoofil -d $domain -f $file_type"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "2" ]]; then
		clear
	  figlet -f banner whois
		domain=""
		verbose="no"
		echo "This module collects info about the website you scan, such as: name, physical address, phone, ecc..."
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/whois>>>" command
			if [[ $command = "help" ]]; then
				echo "This module collects info about the website you scan, such as: name, physical address, phone, ecc..."
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "domain              yes                   $domain"
				echo "verbose             no                    $verbose"
				echo ""
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"domain"* ]]; then
					domain=${module/#"domain "}
					echo "domain ==> $domain"
				elif [[ $module = *"verbose"* ]]; then
					verbose=${module/#"verbose "}
					if [[ $verbose = "yes" || $verbose = "no" ]]; then
						echo "verbose ==> $verbose"
					else
						echo "The option verbose can be only yes or no"
						verbose="no"
					fi
				fi
			elif [[ $command = "execute" ]]; then
				command="whois -d $domain"
				if [[ $verbose = "yes" ]]; then
					command="$command --verbose"
				fi
				echo "[+] Executing the command: $command"
				eval "$command"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "3" ]]; then
		clear
		figlet -f banner deepmagic
		domain=""
		echo "This is all-in-one tool include some of the most important tool (whois, netcraft, ecc...) for information gathering"
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/deepmagic>>>" command
			if [[ $command = "help" ]]; then
				echo "This is all-in-one tool include some of the most important tool (whois, netcraft, ecc...) for information gathering"
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "domain              yes                   $domain"
				echo ""
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"domain"* ]]; then
					domain=${module/#"domain "}
					echo "domain ==> $domain"
				fi
			elif [[ $command = "execute" ]]; then
				echo "[+] Executing the command: dmitry -winsepfb $domain"
				eval "dmitry -winsepfb $domain"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "4" ]]; then
		interface=""
		target=""
		mode=""
    flood="no"
		verbose="no"
		clear
		figlet -f banner hping3
		echo "This module check if target is alive"
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/hping3>>>" command
			if [[ $command = "help" ]]; then
				echo "This module check if target is alive"
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "interface           yes                   $interface"
				echo "target              yes                   $target"
				echo "mode                yes                   $mode (must be: raw ip, icmp, udp)"
				echo "flood               no                    $flood WARNING: ypu can damage the target)"
				echo "verbose             no                    $verbose"
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"interface"* ]]; then
					interface=${module/#"interface "}
					echo "interface ==> $interface"
				elif [[ $module = *"target"* ]]; then
					target=${module/#"target "}
					echo "target ==> $target"
				elif [[ $module = *"mode"* ]]; then
					mode=${module/#"mode "}
					if [[ $mode = "raw ip" || $mode = "icmp" || $mode = "udp" ]]; then
						echo "mode ==> $mode"
					else
						echo "Invalid mode"
						mode=""
					fi
				elif [[ $module = *"flood"* ]]; then
					flood=${module/#"flood "}
					if [[ $flood = "yes" || $flood = "no" ]]; then
						echo "flood ==> $flood"
					else
						echo "The option flood can be only yes or no"
						flood="no"
					fi
				elif [[ $module = *"verbose"* ]]; then
					verbose=${module/#"verbose "}
					if [[ $verbose = "yes" || $verbose = "no" ]]; then
						echo "verbose ==> $verbose"
					else
						echo "The option verbose can be only yes or no"
						verbose="no"
					fi
				fi
			elif [[ $command = "execute" ]]; then
				if [[ $mode = "raw ip" ]]; then
					vmode="0"
				elif [[ $mode = "icmp" ]]; then
					vmode="1"
				elif [[ $mode = "udp" ]]; then
					vmode="2"
				fi
				command="hping3 -$vmode -I $interface $target"
				if [[ $verbose = "yes" ]]; then
					command="$command -V"
				elif [[ $flood = "yes" ]]; then
					command="$command --flood"
				fi
				echo "[+] Executing the command: $command"
				eval "$command"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "5" ]]; then
		clear
	  figlet -f banner nmap
		echo "This tool is a powerful scanner of open port, services, etc..."
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show modules        Shows the modules"
		echo "use <MODULE>        Use the <MODULE>"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/nmap>>>" command
			if [[ $command = "help" ]]; then
				echo "This tool is a powerful scanner of open port, services, etc..."
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show modules        Shows the modules"
				echo "use <MODULE>        Use the <MODULE>"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show modules" ]]; then
				echo "MODULE              DESCRIPTION"
				echo "vulner              Scan for vulnerabilities"
				echo "bypass              Bypass firewall"
				echo "detect              Detect firewall with ACK probe"
				echo "file upload         Exploits insecure file upload forms in web applications"
				echo "upload              Uploads a local file to a remote web server"
				echo ""
			elif [[ $command = *"use"* ]]; then
				module=${command/#"use "}
				if [[ $module = "vulner" ]]; then
					clear
					figlet -f banner nmap
					target=""
					service="yes"
					verbose="no"
					echo "-----------VULNER----------"
					echo "Scan the given target and search vulnerabilities"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the nmap menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/nmap/vulner>>>" command
						if [[ $command = "help" ]]; then
							echo "Scan the given target and search vulnerabilities"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the nmap menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "target              yes                   $target"
							echo "service             no                    $service"
							echo "verbose             no                    $verbose"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"target"* ]]; then
								target=${module/#"target "}
								echo "target ==> $target"
							elif [[ $module = *"service"* ]]; then
								service=${module/#"service "}
								if [[ $service = "yes" || $service = "no" ]]; then
									echo "service ==> $service"
								else
									echo "The option service can be only yes or no"
									service="no"
								fi
							elif [[ $module = *"verbose"* ]]; then
								verbose=${module/#"verbose "}
								if [[ $verbose = "yes" || $verbose = "no" ]]; then
									echo "verbose ==> $verbose"
								else
									echo "The option verbose can be only yes or no"
									verbose="no"
								fi
							fi
						elif [[ $command = "execute" ]]; then
							command="nmap --script vulner"
							if [[ $verbose = "yes" ]]; then
								command="$command -v"
							elif [[ $service ]]; then
								command="$command -Sv"
							fi
							echo "[+] Executing the command: nmap --script vulner $target"
							eval "nmap --script vulner $target"
						elif [[ $command = "back" ]]; then
							clear
						  figlet -f banner nmap
							echo "This tool is a powerful scanner of open port, services, etc..."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "bypass" ]]; then
					clear
					figlet -f banner nmap
					target=""
					decoy="random"
					service="yes"
					fast="yes"
					verbose="no"
					echo "-----------BYPASS----------"
					echo "Bypass the firewall."
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the nmap menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/nmap/bypass>>>" command
						if [[ $command = "help" ]]; then
							echo "Bypass the firewall."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the nmap menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "target              yes                   $target"
							echo "decoy               no                    $decoy (the ip to spoof)"
							echo "service             no                    $service"
							echo "fast                no                    $fast"
							echo "verbose             no                    $verbose"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"target"* ]]; then
								target=${module/#"target "}
								echo "target ==> $target"
							elif [[ $module = *"service"* ]]; then
								service=${module/#"service "}
								if [[ $service = "yes" || $service = "no" ]]; then
									echo "service ==> $service"
								else
									echo "The option service can be only yes or no"
									service="no"
								fi
							elif [[ $module = *"fast"* ]]; then
								fast=${module/#"fast "}
								if [[ $fast = "yes" || $fast = "no" ]]; then
									echo "fast ==> $fast"
								else
									echo "The option fast can be only yes or no"
									fast="no"
								fi
							elif [[ $module = *"verbose"* ]]; then
								verbose=${module/#"verbose "}
								if [[ $verbose = "yes" || $verbose = "no" ]]; then
									echo "verbose ==> $verbose"
								else
									echo "The option verbose can be only yes or no"
									verbose="no"
								fi
							fi
						elif [[ $command = "execute" ]]; then
							command="nmap -sS"
							if [[ $service = "yes" ]]; then
								command="$command -sV"
							elif [[ $verbose = "yes" ]]; then
								command="$command -v"
							elif [[ $fast = "yes" ]]; then
								command="$command -F"
							elif [[ $decoy = "random" ]]; then
								command="$command -D RND"
							elif [[ $decoy != "random" ]]; then
								command="$command -D $decoy"
							fi
							command="$command $target"
							echo "[+] Executing the command: $command"
							eval "$command"
						elif [[ $command = "back" ]]; then
							clear
						  figlet -f banner nmap
							echo "This tool is a powerful scanner of open port, services, etc..."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "detect" ]]; then
					clear
					figlet -f banner nmap
					target=""
					echo "-----------DETECT----------"
					echo "Detect firewall with ACK probe"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the nmap menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/nmap/detect>>>" command
						if [[ $command = "help" ]]; then
							echo "Detect firewall with ACK probe"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the nmap menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "target              yes                   $target"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"target"* ]]; then
								target=${module/#"target "}
								echo "target ==> $target"
							fi
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: nmap -sA $target --reason"
							eval "nmap -sA $target --reason"
						elif [[ $command = "back" ]]; then
							clear
						  figlet -f banner nmap
							echo "This tool is a powerful scanner of open port, services, etc..."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "file upload" ]]; then
					clear
					figlet -f banner nmap
					target=""
					port="80"
					echo "--------FILE UPLOAD--------"
					echo "Exploits insecure file upload forms in web applications using various techniques"
					echo "like changing the Content-type header or creating valid image files containing the payload in the comment."
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the nmap menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/nmap/vulner>>>" command
						if [[ $command = "help" ]]; then
							echo "Exploits insecure file upload forms in web applications using various techniques"
							echo "like changing the Content-type header or creating valid image files containing the payload in the comment."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the nmap menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "target              yes                   $target"
							echo "port                no                    $port"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"target"* ]]; then
								target=${module/#"target "}
								echo "target ==> $target"
							elif [[ $module = *"port"* ]]; then
								port=${module/#"port "}
								echo "port ==> $port"
							fi
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: nmap -p$port --script http-fileupload-exploiter.nse $target"
							eval "nmap -p$port --script http-fileupload-exploiter.nse $target"
						elif [[ $command = "back" ]]; then
							clear
						  figlet -f banner nmap
							echo "This tool is a powerful scanner of open port, services, etc..."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "upload" ]]; then
					clear
					figlet -f banner nmap
					target=""
					port="80"
				  file=""
					directory=""
					echo "-----------UPLOAD----------"
					echo "Uploads a local file to a remote web server directory"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the nmap menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/nmap/vulner>>>" command
						if [[ $command = "help" ]]; then
							echo "Uploads a local file to a remote web server directory"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the nmap menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "target              yes                   $target"
							echo "port                no                    $port"
							echo "file                yes                   $file (local file)"
							echo "directory           yes                   $directory (remote directory (Ex: /uploads/file.txt)"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"target"* ]]; then
								target=${module/#"target "}
								echo "target ==> $target"
							elif [[ $module = *"port"* ]]; then
								port=${module/#"port "}
								echo "port ==> $port"
							elif [[ $module = *"file"* ]]; then
								file=${module/#"file "}
								echo "file ==> $file"
							elif [[ $module = *"directory"* ]]; then
								directory=${module/#"directory "}
								echo "directory ==> $directory"
							fi
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: nmap -p$port $target --script http-put --script-args http-put.url='$directory',http-put.file='$file'"
							eval "nmap -p$port $target --script http-put --script-args http-put.url='$directory',http-put.file='$file'"
						elif [[ $command = "back" ]]; then
							clear
						  figlet -f banner nmap
							echo "This tool is a powerful scanner of open port, services, etc..."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				fi
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "6" ]]; then
		clear
		figlet -f banner nikto
		target=""
		port="80"
		echo "This module make a scan of the target with the aim of finding vulnerabilities"
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/nikto>>>" command
			if [[ $command = "help" ]]; then
				echo "This module make a scan of the target with the aim of finding vulnerabilities"
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "target              yes                   $target"
				echo "port                no                    $port"
				echo ""
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"target"* ]]; then
					target=${module/#"target "}
					echo "target ==> $target"
				elif [[ $module = *"port"* ]]; then
					port=${module/#port }
					echo "port ==> $port"
				fi
			elif [[ $command = "execute" ]]; then
				echo "[+] Executing the command: nikto -host $target -port $port"
				eval "nikto -host $target -port $port"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "7" ]]; then
		clear
		figlet -f banner wafw00f
		domain=""
		list_all="no"
		verbose="no"
		echo "This module scan a domain with the aim of find a Web Application Firewall (WAF)"
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the niktomain menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/wafw00f>>>" command
			if [[ $command = "help" ]]; then
				echo "This module scan a domain with the aim of find a Web Application Firewall (WAF)"
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "domain              yes                   $domain"
				echo "list all            no                    $list_all"
				echo "verbose             no                    $verbose"
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"domain"* ]]; then
					domain=${module/#"domain "}
					echo "domain ==> $domain"
				elif [[ $module = *"list all"* ]]; then
					list_all=${module/#list_all }
					if [[ $list_all = "yes" || $list_all = "no" ]]; then
						echo "list all ==> $list_all"
					else
						echo "The option list all can be only yes or no"
						list_all="no"
					fi
				elif [[ $module = *"verbose"* ]]; then
					verbose=${module/#verbose }
					if [[ $verbose = "yes" || $verbose = "no" ]]; then
						echo "verbose ==> $verbose"
					else
						echo "The option verbose can be only yes or no"
						verbose="no"
					fi
				fi
			elif [[ $command = "execute" ]]; then
				command="wafw00f"
				if [[ $verbose = "yes" ]]; then
					command="$command -v"
				elif [[ $list_all ]]; then
					command="$command -a"
				fi
				command="$command $domain"
				echo "[+] Executing the command: $command"
				eval "$command"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "8" ]]; then
		clear
		figlet -f banner lbd
		domain=""
		port=""
		echo "Checks if a given domain uses load-balancer"
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/lbd>>>" command
			if [[ $command = "help" ]]; then
				echo "Checks if a given domain uses load-balancer"
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "domain              yes                   $domain"
				echo "port                no                    $port"
				echo ""
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"domain"* ]]; then
					domain=${module/#"domain "}
					echo "domain ==> $domain"
				elif [[ $module = *"port"* ]]; then
					port=${module/#port }
					echo "port ==> $port"
				fi
			elif [[ $command = "execute" ]]; then
				echo "[+] Executing the command: lbd $domain $port"
				eval "lbd $domain $port"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "9" ]]; then
		clear
	  figlet -f banner weevely
		echo "This tool generate a webshell for website that use PHP."
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show modules        Shows the modules"
		echo "use <MODULE>        Use the <MODULE>"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/weevely>>>" command
			if [[ $command = "help" ]]; then
				echo "This tool generate a webshell for website that use PHP."
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show modules        Shows the modules"
				echo "use <MODULE>        Use the <MODULE>"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show modules" ]]; then
				echo "MODULE              DESCRIPTION"
				echo "generate            Generate the webshell"
				echo "run                 Run the webshell"
				echo ""
			elif [[ $command = *"use"* ]]; then
				module=${command/#"use "}
				if [[ $module = "generate" ]]; then
					clear
					figlet -f banner weevely
					password=""
				  file=""
					echo "-------------------GENERATE--------------------"
					echo "generate the webshell"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the weevely menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/weevely/generate>>>" command
						if [[ $command = "help" ]]; then
							echo "Generate the webshell"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the weevely menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "password            yes                   $password"
							echo "file                yes                   $file (must finish with .php)"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"password"* ]]; then
								password=${module/#"password "}
								echo "password ==> $password"
							elif [[ $module = *"file"* ]]; then
							  file=${module/#file }
								echo "file ==> $file"
							fi
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: weevely generate $password $file"
							eval "weevely generate $password $file"
						elif [[ $command = "back" ]]; then
							clear
						  figlet -f banner weevely
							echo "This tool generate a webshell for website that use PHP."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "run" ]]; then
					clear
					figlet -f banner weevely
					url=""
					password=""
					echo "----------------------RUN----------------------"
					echo "Run the uploaded shell"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the weevely menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/weevely/use>>>" command
						if [[ $command = "help" ]]; then
							echo "Run the uploaded shell"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the weevely menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "url                 yes                   $url"
							echo "password            yes                   $password"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"url"* ]]; then
								url=${module/#"url "}
								echo "url ==> $password"
							elif [[ $module = *"file"* ]]; then
							  file=${module/#file }
								echo "file ==> $file"
							fi
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: weevely generate $password $file"
							eval "weevely generate $password $file"
						elif [[ $command = "back" ]]; then
							clear
						  figlet -f banner weevely
							echo "This tool generate a webshell for website that use PHP."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				fi
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "10" ]]; then
		clear
		figlet -f banner wpscan
		echo "This tool find and exploit vulnerabilities of wordpress website and blog."
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show modules        Shows the modules"
		echo "use <MODULE>        Use the <MODULE>"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/wpscan>>>" command
			if [[ $command = "help" ]]; then
				echo "This tool find and exploit vulnerabilities of wordpress website and blog."
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show modules        Shows the modules"
				echo "use <MODULE>        Use the <MODULE>"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show modules" ]]; then
				echo "MODULE              DESCRIPTION"
				echo "scan                Scan for vulnerabilities"
				echo "username            Find username"
				echo "bruteforce          Bruteforce the user's password"
				echo ""
			elif [[ $command = *"use"* ]]; then
				module=${command/#"use "}
				if [[ $module = "scan" ]]; then
					clear
					figlet -f banner wpscan
					url=""
					echo "------------------SCAN-------------------"
					echo "Scan if a given wordpress url has vulnerability"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the wpscan menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/wpscan/scan>>>" command
						if [[ $command = "help" ]]; then
							echo "Scan if a given wordpress url has vulnerability"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the weevely menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "url                 yes                   $url"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"url"* ]]; then
								url=${module/#"url "}
								echo "url ==> $url"
							fi
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: wpscan --url $url"
							eval "wpscan --url $url"
						elif [[ $command = "back" ]]; then
							clear
							figlet -f banner wpscan
							echo "This tool find and exploit vulnerabilities of wordpress website and blog."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "username" ]]; then
					clear
					figlet -f banner wpscan
					url=""
					echo "----------------USERNAME-----------------"
					echo "Search usernames of a given wordpress url"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the weevely menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/wpscan/username>>>" command
						if [[ $command = "help" ]]; then
							echo "Search usernames of a given wordpress url"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the wpscan menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "url                 yes                   $url"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"url"* ]]; then
								url=${module/#"url "}
								echo "url ==> $url"
							fi
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: wpscan --url $url --enumerate u"
							eval "wpscan --url $url --enumerate u"
						elif [[ $command = "back" ]]; then
							clear
							figlet -f banner wpscan
							echo "This tool find and exploit vulnerabilities of wordpress website and blog."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "bruteforce" ]]; then
					clear
					figlet -f banner wpscan
					url=""
					wordlist=""
					username=""
					threads=""
					echo "---------------BRUTEFORCE----------------"
					echo "Bruteforce a username of a wordpress site"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the weevely menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/wpscan/bruteforce>>>" command
						if [[ $command = "help" ]]; then
							echo "Bruteforce a username of a wordpress site"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the wpscan menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "url                 yes                   $url"
							echo "wordlist            yes                   $wordlist"
							echo "username            yes                   $username"
							echo "threads             yes                   $threads"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"url"* ]]; then
								url=${module/#"url "}
								echo "url ==> $url"
							elif [[ $module = *"wordlist"* ]]; then
								wordlist=${module/#"wordlist "}
								echo "wordlist ==> $wordlist"
							elif [[ $module = *"username"* ]]; then
								username=${module/#"username "}
								echo "username ==> $username"
							elif [[ $module = *"threads"* ]]; then
								threads=${module/#"threads "}
								echo "threads ==> $threads"
							fi
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: wpscan --url $url --wordlist $wordlist --username $username --threads $threads"
							eval "wpscan --url $url --wordlist $wordlist --username $username --threads $threads"
						elif [[ $command = "back" ]]; then
							clear
							figlet -f banner wpscan
							echo "This tool find and exploit vulnerabilities of wordpress website and blog."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				fi
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "11" ]]; then
		clear
	  figlet -f banner httrack
		website=""
		directory=""
		verbose="no"
		echo "This tool can copy a website in a your computer directory"
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/httrack>>>" command
			if [[ $command = "help" ]]; then
				echo "This tool can copy a website in a your computer directory"
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "website             yes                   $domain"
				echo "directory           no                    $directory"
				echo "verbose             no                    $verbose"
				echo ""
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"website"* ]]; then
					website=${module/#"website "}
					echo "website ==> $website"
				elif [[ $module = *"directory"* ]]; then
					directory=${module/#"directory "}
					echo "directory ==> $directory"
				elif [[ $module = *"verbose"* ]]; then
					verbose=${module/#"verbose "}
					if [[ $verbose = "yes" || $verbose = "no" ]]; then
						echo "verbose ==> $verbose"
					else
						echo "The option verbose can be only yes or no"
						verbose="no"
					fi
				fi
			elif [[ $command = "execute" ]]; then
				command="httrack"
				if [[ $verbose = "yes" ]]; then
					command="$command -v"
				fi
				command="$command $website $directory"
				echo "[+] Executing the command: $command"
				eval "$command"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "12" ]]; then
		clear
	  figlet -f banner sqlmap
		echo "This tool search and exploit sql vulnerabilities."
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show modules        Shows the modules"
		echo "use <MODULE>        Use the <MODULE>"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/sqlmap>>>" command
			if [[ $command = "help" ]]; then
				echo "This tool search and exploit sql vulnerabilities."
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show modules        Shows the modules"
				echo "use <MODULE>        Use the <MODULE>"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show modules" ]]; then
				echo "MODULE              DESCRIPTION"
				echo "check               Check for sql vulnerabilities"
				echo "database            Show all database"
				echo "table               Show all table of a sql database"
				echo "dump                Dump the value from a table"
				echo ""
			elif [[ $command = *"use"* ]]; then
				module=${command/#"use "}
				if [[ $module = "check" ]]; then
					clear
					figlet -f banner sqlmap
					url=""
					tor="no"
					echo "------------------CHECK------------------"
					echo "Check for sql vulnerabilities"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the sqlmap menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/sqlmap/check>>>" command
						if [[ $command = "help" ]]; then
							echo "Check for sql vulnerabilities"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the sqlmap menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "url                 yes                   $url"
							echo "tor                 no                    $tor"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"url"* ]]; then
								url=${module/#"url "}
								echo "url ==> $url"
							elif [[ $module = *"tor"* ]]; then
								tor=${module/#"tor "}
								if [[ $tor = "yes" || $tor = "no" ]]; then
									echo "tor ==> $tor"
								else
									echo "The option tor can be only yes or no"
									tor="no"
								fi
							fi
						elif [[ $command = "execute" ]]; then
							command="sqlmap"
							if [[ $tor = "yes" ]]; then
								command="$command --tor --tor-type=SOCKS5"
								echo "[+] Executing the command: service tor start"
								eval "service tor start"
							fi
							command="$command -u $url"
							echo "[+] Executing the command: $command"
							eval "$command"
						elif [[ $command = "back" ]]; then
							clear
						  figlet -f banner sqlmap
							echo "This tool search and exploit sql vulnerabilities."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "database" ]]; then
					clear
					figlet -f banner sqlmap
					url=""
					tor="no"
					echo "-----------------DATABASE----------------"
					echo "Show all the sql database"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the sqlmap menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/sqlmap/database>>>" command
						if [[ $command = "help" ]]; then
							echo "Show all the sql database"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the sqlmap menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "url                 yes                   $url"
							echo "tor                 no                    $tor"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"url"* ]]; then
								url=${module/#"url "}
								echo "url ==> $url"
							elif [[ $module = *"tor"* ]]; then
								tor=${module/#"tor "}
								if [[ $tor = "yes" || $tor = "no" ]]; then
									echo "tor ==> $tor"
								else
									echo "The option tor can be only yes or no"
									tor="no"
								fi
							fi
						elif [[ $command = "execute" ]]; then
							command="sqlmap"
							if [[ $tor = "yes" ]]; then
								command="$command --tor --tor-type=SOCKS5"
								echo "[+] Executing the command: service tor start"
								eval "service tor start"
							fi
							command="$command -u $url --dbs"
							echo "[+] Executing the command: $command"
							eval "$command"
						elif [[ $command = "back" ]]; then
							clear
						  figlet -f banner sqlmap
							echo "This tool search and exploit sql vulnerabilities."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "table" ]]; then
					clear
					figlet -f banner sqlmap
					url=""
					database=""
					tor="no"
					echo "------------------TABLE------------------"
					echo "Show all the sql table in a sql database."
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the sqlmap menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/sqlmap/table>>>" command
						if [[ $command = "help" ]]; then
							echo "Show all the sql table in a sql database."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the sqlmap menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "url                 yes                   $url"
							echo "database            yes                   $database"
							echo "tor                 no                    $tor"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"url"* ]]; then
								url=${module/#"url "}
								echo "url ==> $url"
							elif [[ $module = *"database"* ]]; then
								database=${module/#"database "}
								echo "database ==> $database"
							elif [[ $module = *"tor"* ]]; then
								tor=${module/#"tor "}
								if [[ $tor = "yes" || $tor = "no" ]]; then
									echo "tor ==> $tor"
								else
									echo "The option tor can be only yes or no"
									tor="no"
								fi
							fi
						elif [[ $command = "execute" ]]; then
							command="sqlmap"
							if [[ $tor = "yes" ]]; then
								command="$command --tor --tor-type=SOCKS5"
								echo "[+] Executing the command: service tor start"
								eval "service tor start"
							fi
							command="$command -u $url -o --dbms MySql -D $database --tables"
							echo "[+] Executing the command: $command"
							eval "$command"
						elif [[ $command = "back" ]]; then
							clear
							figlet -f banner sqlmap
							echo "This tool search and exploit sql vulnerabilities."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "dump" ]]; then
					clear
					figlet -f banner sqlmap
					url=""
					database=""
					table=""
					tor="no"
					echo "-------------------DUMP------------------"
					echo "Show all the values of a sql table in a sql database."
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the sqlmap menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/sqlmap/dump>>>" command
						if [[ $command = "help" ]]; then
							echo "Show all the values of a sql table in a sql database."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the sqlmap menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "url                 yes                   $url"
							echo "database            yes                   $database"
							echo "table               yes                   $table"
							echo "tor                 no                    $tor"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"url"* ]]; then
								url=${module/#"url "}
								echo "url ==> $url"
							elif [[ $module = *"database"* ]]; then
								database=${module/#"database "}
								echo "database ==> $database"
							elif [[ $module = *"table"* ]]; then
								table=${module/#"table "}
								echo "table ==> $table"
							elif [[ $module = *"tor"* ]]; then
								tor=${module/#"tor "}
								if [[ $tor = "yes" || $tor = "no" ]]; then
									echo "tor ==> $tor"
								else
									echo "The option tor can be only yes or no"
									tor="no"
								fi
							fi
						elif [[ $command = "execute" ]]; then
							command="sqlmap"
							if [[ $tor = "yes" ]]; then
								command="$command --tor --tor-type=SOCKS5"
								echo "[+] Executing the command: service tor start"
								eval "service tor start"
							fi
							command="$command -u $url -o --dbms MySql -D $database -T $table --columns --dump"
							echo "[+] Executing the command: $command"
							eval "$command"
						elif [[ $command = "back" ]]; then
							clear
							figlet -f banner sqlmap
							echo "This tool search and exploit sql vulnerabilities."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				fi
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "13" ]]; then
		clear
	  figlet -f banner kwetza
		apk=""
		lhost=""
		lport=""
		mode="https"
		add="yes"
		echo "Infect an existing apk and exploit a phone"
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/kwetza>>>" command
			if [[ $command = "help" ]]; then
				echo "Infect an existing apk and exploit a phone"
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "apk                 yes                   $apk"
				echo "lhost               yes                   $lhost"
				echo "lport               yes                   $lport"
				echo "mode                no                    $mode"
				echo "add-evil            no                    $add"
				echo ""
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"apk"* ]]; then
					apk=${module/#"apk "}
					echo "apk ==> $apk"
				elif [[ $module = *"lhost"* ]]; then
					lhost=${module/#"lhost "}
					echo "lhost ==> $lhost"
				elif [[ $module = *"lport"* ]]; then
					lport=${module/#"lport "}
					echo "lport ==> $lport"
				elif [[ $module = *"mode"* ]]; then
					mode=${module/#"mode "}
					if [[ $mode = "https" || $mode = "tcp" ]]; then
						echo "mode ==> $mode"
					else
						echo "The option mode can be only https or ftp"
						add="https"
					fi
				elif [[ $module = *"add-evil"* ]]; then
					add=${module/#"add-evil "}
					if [[ $add = "yes" || $add = "no" ]]; then
						echo "add-evil ==> $add"
					else
						echo "The option add-evil can be only yes or no"
						add="yes"
					fi
				fi
			elif [[ $command = "execute" ]]; then
				echo "[+] Executing the command: python2 Tools/kwetza/kwetza.py $apk $mode $lhost $lport $add"
				eval "python2 Tools/kwetza/kwetza.py $apk $mode $lhost $lport $add"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "14" ]]; then
		clear
	  figlet -f banner hydra
		host=""
		login=""
		wordlist=""
		protocol=""
		verbose="no"
		echo "One of the best tool for password cracking."
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show options        Shows the values to set"
		echo "set <OPTION>        Set the value of the <OPTION>"
		echo "execute             Execute the tool"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/hydra>>>" command
			if [[ $command = "help" ]]; then
				echo "One of the best tool for password cracking."
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show options        Shows the values to set"
				echo "set <OPTION>        Set the value of the <OPTION>"
				echo "execute             Execute the tool"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show options" ]]; then
				echo "OPTION              REQUIRED              CURRENT VALUE"
				echo "host                yes                   $host"
				echo "login               yes                   $login (file)"
				echo "wordlist            yes                   $wordlist (file)"
				echo "protocol            yes                   $protocol"
				echo "verbose             no                    $verbose"
				echo ""
			elif [[ $command = *"set"* ]]; then
				module=${command/#"set "}
				if [[ $module = *"host"* ]]; then
					host=${module/#"host "}
					echo "host ==> $host"
				elif [[ $module = *"login"* ]]; then
					login=${module/#"login "}
					echo "login ==> $login"
				elif [[ $module = *"wordlist"* ]]; then
					wordlist=${module/#"wordlist "}
					echo "wordlist ==> $wordlist"
				elif [[ $module = *"protocol"* ]]; then
					protocol=${module/#"protocol "}
					if [[ $protocol = "ftp" || $protocol = "smb" || $protocol = "pop3" || $protocol = "imap" || $protocol = "vnc" || $protocol = "ssh" || $protocol = "telnet" ]]; then
						echo "protocol ==> $protocol"
					else
						echo "The option protocol can be only ftp, smb, pop3, imap, mysql, vnc, ssh or telnet"
						protocol=""
					fi
				elif [[ $module = *"verbose"* ]]; then
					verbose=${module/#"verbose "}
					if [[ $verbose = "yes" || $verbose = "no" ]]; then
						echo "verbose ==> $verbose"
					else
						echo "The option verbose can be only yes or no"
						verbose="no"
					fi
				fi
			elif [[ $command = "execute" ]]; then
				command="hydra"
				if [[ $verbose = "yes" ]]; then
					command="$command -v"
				fi
				command="$command -L $login -P $wordlist $protocol://$host"
				echo "[+] Executing the command: $command"
				eval "$command"
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "15" ]]; then
		clear
		figlet -f banner cupp
		echo "Common User Password Profiler."
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show modules        Shows the modules"
		echo "use <MODULE>        Use the <MODULE>"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/cupp>>>" command
			if [[ $command = "help" ]]; then
				echo "Common User Password Profiler."
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show modules        Shows the modules"
				echo "use <MODULE>        Use the <MODULE>"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show modules" ]]; then
				echo "MODULE              DESCRIPTION"
				echo "default             Download default usernames and password"
				echo "interactive         Generate password from name, surname, ecc..."
				echo ""
			elif [[ $command = *"use"* ]]; then
				module=${command/#"use "}
				if [[ $module = "default" ]]; then
					clear
					figlet -f banner cupp
					echo "----------DEFAULT----------"
					echo "Download default usernames and password"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "execute             Execute the tool"
					echo "back                Go back to the cupp menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/cupp/default>>>" command
						if [[ $command = "help" ]]; then
							echo "Download default usernames and password"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the cupp menu"
							echo ""
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: python3 Tools/cupp/cupp.py -a"
							eval "python3 Tools/cupp/cupp.py -a"
						elif [[ $command = "back" ]]; then
							clear
							figlet -f banner cupp
							echo "Common User Password Profiler."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "interactive" ]]; then
					clear
					figlet -f banner cupp
					echo "--------INTERACTIVE--------"
					echo "Generate password from name, surname, ecc..."
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "execute             Execute the tool"
					echo "back                Go back to the cupp menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/cupp/interactive>>>" command
						if [[ $command = "help" ]]; then
							echo "Generate password from name, surname, ecc..."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "back                Go back to the cupp menu"
							echo ""
						elif [[ $command = "execute" ]]; then
							echo "[+] Executing the command: python3 Tools/cupp/cupp.py -i"
							eval "python3 Tools/cupp/cupp.py -i"
						elif [[ $command = "back" ]]; then
							clear
							figlet -f banner cupp
							echo "Common User Password Profiler."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				fi
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "16" ]]; then
		clear
		figlet -f banner aircrack-ng
		echo "Scan for acces point and make a deauth attack."
		echo ""
		echo "COMMAND             DESCRIPTION"
		echo "help                Show this help message"
		echo "show modules        Shows the modules"
		echo "use <MODULE>        Use the <MODULE>"
		echo "back                Go back to the main menu"
		echo ""
		while [[ 1 ]]; do
			read -p "Automater/aircrack-ng>>>" command
			if [[ $command = "help" ]]; then
				echo "Scan for wireless acces point and make a deauth attack."
				echo ""
				echo "COMMAND             DESCRIPTION"
				echo "help                Show this help message"
				echo "show modules        Shows the modules"
				echo "use <MODULE>        Use the <MODULE>"
				echo "back                Go back to the main menu"
				echo ""
			elif [[ $command = "show modules" ]]; then
				echo "MODULE              DESCRIPTION"
				echo "scan                Scan for Wireless Acces Point"
				echo "deauth              Do a deauthentication attack"
				echo ""
			elif [[ $command = *"use"* ]]; then
				module=${command/#"use "}
				if [[ $module = "scan" ]]; then
					clear
					figlet -f banner aircrack-ng
					interface=""
					channel=""
					echo "---------------------------------SCAN---------------------------------"
					echo "Scan for Wireless Acces Point"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "start               Start the monitor mode"
					echo "stop                Stop the monitor mode"
					echo "back                Go back to the aircrack-ng menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/aircrack-ng/scan>>>" command
						if [[ $command = "help" ]]; then
							echo "Scan for Wireless Acces Point"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "start               Start the monitor mode"
							echo "stop                Stop the monitor mode"
							echo "back                Go back to the aircrack-ng menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "interface           yes                   $interface"
							echo "channel             no                    $channel"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"interface"* ]]; then
								interface=${module/#"interface "}
								echo "interface ==> $interface"
							elif [[ $module = *"channel"* ]]; then
								channel=${module/#"channel "}
								echo "channel ==> $channel"
							fi
						elif [[ $command = "start" ]]; then
							echo "[+] Executing the command: airmon-ng start $interface $channel"
							eval "airmon-ng start $interface $channel"
						elif [[ $command = "stop" ]]; then
							mon="mon"
							echo "[+] Executing the command: airmon-ng stop $interface$mon"
							eval "airmon-ng stop $interface$mon"
						elif [[ $command = "back" ]]; then
							clear
							figlet -f banner aircrack-ng
							echo "Scan for acces point and make a deauth attack."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				elif [[ $module = "deauth" ]]; then
					clear
					figlet -f banner aircrack-ng
					interface=""
					bssid=""
					channel=""
					number=""
					echo "--------------------------------DEAUTH--------------------------------"
					echo "Make a deauth attack to a given BSSID"
					echo ""
					echo "COMMAND             DESCRIPTION"
					echo "help                Show this help message"
					echo "show options        Shows the values to set"
					echo "set <OPTION>        Set the value of the <OPTION>"
					echo "execute             Execute the tool"
					echo "back                Go back to the aircrack-ng menu"
					echo ""
					while [[ 1 ]]; do
						read -p "Automater/aircrack-ng/deauth>>>" command
						if [[ $command = "help" ]]; then
							echo "Make a deauth attack to a given BSSID"
							echo "You have to run the module scan and, when you find the victim, hit Ctrl-C"
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show options        Shows the values to set"
							echo "set <OPTION>        Set the value of the <OPTION>"
							echo "execute             Execute the tool"
							echo "stop                Stop monitor mode"
							echo "back                Go back to the aircrack-ng menu"
							echo ""
						elif [[ $command = "show options" ]]; then
							echo "OPTION              REQUIRED              CURRENT VALUE"
							echo "interface           yes                   $interface"
							echo "bssid               yes                   $bssid"
							echo "station             yes                   $station"
							echo "number              yes                   $number (CH column)"
							echo "channel             recommended           $channel"
							echo ""
						elif [[ $command = *"set"* ]]; then
							module=${command/#"set "}
							if [[ $module = *"interface"* ]]; then
								interface=${module/#"interface "}
								echo "interface ==> $interface"
							elif [[ $module = *"bssid"* ]]; then
								bssid=${module/#"bssid "}
								echo "bssid ==> $bssid"
							elif [[ $module = *"station"* ]]; then
								station=${module/#"station "}
								echo "station ==> $station"
							elif [[ $module = *"number"* ]]; then
								number=${module/#"number "}
								echo "number ==> $number"
							elif [[ $module = *"channel"* ]]; then
								channel=${module/#"channel "}
								echo "channel ==> $channel"
							fi
						elif [[ $command = "execute" ]]; then
							mon="mon"
							echo "[+] Executing the command: airmon-ng start $interface $channel"
							eval "airmon-ng start $interface $channel"
							echo "[+] Executing the command: aireplay-ng -0 $number -a $bssid -c $station $interface$mon"
							eval "aireplay-ng -0 $number -a $bssid -c $station $interface$mon"
						elif [[ $command = "stop" ]]; then
							mon="mon"
							echo "[+] Executing the command: airmon-ng stop $interface$mon"
							eval "airmon-ng stop $interface$mon"
						elif [[ $command = "back" ]]; then
							clear
							figlet -f banner aircrack-ng
							echo "Scan for acces point and make a deauth attack."
							echo ""
							echo "COMMAND             DESCRIPTION"
							echo "help                Show this help message"
							echo "show modules        Shows the modules"
							echo "use <MODULE>        Use the <MODULE>"
							echo "back                Go back to the main menu"
							echo ""
							break
						fi
					done
				fi
			elif [[ $command = "back" ]]; then
				break
			fi
		done
	elif [[ $input = "help" ]]; then
			echo "   #                                                          "
			echo "  # #   #    # #####  ####  #    #   ##   ##### ###### #####  "
			echo " #   #  #    #   #   #    # ##  ##  #  #    #   #      #    # "
			echo "#     # #    #   #   #    # # ## # #    #   #   #####  #    # "
			echo "####### #    #   #   #    # #    # ######   #   #      #####  "
			echo "#     # #    #   #   #    # #    # #    #   #   #      #   #   v.3.0.0"
			echo "#     #  ####    #    ####  #    # #    #   #   ###### #    #  By @gasmat"
			echo "---------------------------------OPTIONS---------------------------------"
			echo "|INFORMATION GATHERING  | DATABASE           | USEFUL COMMAND           |"
			echo "|1.  metagoofil         | 12. sqlmap         | help                     |"
			echo "|2.  whois              |--------------------| update                   |"
			echo "|3.  deepmagic          | EXPLOIT            | ip                       |"
			echo "|4.  hping3             | 13. kwetza         |                          |"
			echo "|-----------------------|--------------------|                          |"
			echo "|VULNERABILITY SCANNER  | PASSWORD           |                          |"
			echo "|5.  nmap               | 14. hydra          |                          |"
			echo "|6.  nikto              | 15. cupp           |                          |"
			echo "|7.  wafw00f            |--------------------|                          |"
			echo "|8.  lbd                | WIFI               |                          |"
			echo "|-----------------------| 16. aircrack-ng    |                          |"
			echo "|WEBSITE                |                    |                          |"
			echo "|9.  weevely            |                    |                          |"
			echo "|10. wpscan             |                    |                          |"
			echo "|11. httrack            |                    |                          |"
			echo "-------------------------------------------------------------------------"
	elif [[ $input = "update" ]]; then
		apt update
		apt full-upgrade -y && apt dist-upgrade -y && apt autoremove -y
	elif [[ $input = "install" ]]; then
		apt update
		apt install -y python3 python2 metagoofil dmitry whois hping3 nmap nikto wafw00f lbd weevely wpscan httrack sqlmap hydra aircrack-ng apktool git tor figlet
		pip install beautifulsoup4 bs4
	elif [[ $input = "ip" ]]; then
		echo "INTERNAL IP: "; ifconfig
		echo "EXTERNAL IP: "; curl ipecho.net/plain ; echo
		read -p "Press any key to continue..."
	elif [[ $input = "exit" ]]; then
		echo "See you at the next hack!"
		read -p "Press Enter to continue..."
		clear
		break
	fi
done
#gio open "link"
