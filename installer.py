import subprocess
import random
import os
try:
    var = random.randint(0,4)
    if var == 0:
        print("    _         _                        _            ")
        print("   / \  _   _| |_ ___  _ __ ___   __ _| |_ ___ _ __ ")
        print("  / _ \| | | | __/ _ \| '_ ` _ \ / _` | __/ _ \ '__|")
        print(" / ___ \ |_| | || (_) | | | | | | (_| | ||  __/ |   v.2.4.0")
        print("/_/   \_\__,_|\__\___/|_| |_| |_|\__,_|\__\___|_|   By @gasmat")
        print()
    if var == 1:
        print("   #                                                          ")
        print("  # #   #    # #####  ####  #    #   ##   ##### ###### #####  ")
        print(" #   #  #    #   #   #    # ##  ##  #  #    #   #      #    # ")
        print("#     # #    #   #   #    # # ## # #    #   #   #####  #    # ")
        print("####### #    #   #   #    # #    # ######   #   #      #####  ")
        print("#     # #    #   #   #    # #    # #    #   #   #      #   #  v.2.4.0")
        print("#     #  ####    #    ####  #    # #    #   #   ###### #    # By @gasmat")
    if var == 2:
        print("               _                        _            ")
        print("    /\        | |                      | |           ")
        print("   /  \  _   _| |_ ___  _ __ ___   __ _| |_ ___ _ __ ")
        print("  / /\ \| | | | __/ _ \| '_ ` _ \ / _` | __/ _ \ '__|")
        print(" / ____ \ |_| | || (_) | | | | | | (_| | ||  __/ |   v.2.4.0")
        print("/_/    \_\__,_|\__\___/|_| |_| |_|\__,_|\__\___|_|   By @gasmat")
    if var == 3:
        print("    \          |                         |             ")
        print("   _ \   |   | __|  _ \  __ `__ \   _` | __|  _ \  __| ")
        print("  ___ \  |   | |   (   | |   |   | (   | |    __/ |   v.2.4.0")
        print("_/    _\\\__,_|\__|\___/ _|  _|  _|\__,_|\__|\___|_|   By @gasmat ")
    if var == 4:
        print("   _       _                  _           ")
        print("  /_\ _  _| |_ ___ _ __  __ _| |_ ___ _ _ ")
        print(" / _ \ || |  _/ _ \ '  \/ _` |  _/ -_) '_| v.2.4.0")
        print("/_/ \_\_,_|\__\___/_|_|_\__,_|\__\___|_|   By @gasmat")
    print()
    print("Installer for OS that have apt for package manager")
    print("[+] Updating repository...")
    subprocess.run("sudo apt update", shell=True)
    print("[+] Installing git...")
    subprocess.run("sudo apt install -y git", shell=True)
    print("[+] Installing metagoofil...")
    subprocess.run("sudo apt install -y metagoofil", shell=True)
    print("[+] Installing whois...")
    subprocess.run("sudo apt install -y whois", shell=True)
    print("[+] Installing deep magic...")
    subprocess.run("sudo apt install -y dmitry", shell=True)
    print("[+] Installing hping3...")
    subprocess.run("sudo apt install -y hping3", shell=True)
    print("[+] Installing nmap...")
    subprocess.run("sudo apt install -y nmap", shell=True)
    print("[+] Installing nikto...")
    subprocess.run("sudo apt install -y nikto", shell=True)
    print("[+] Installing wafw00f...")
    subprocess.run("sudo apt install -y wafw00f", shell=True)
    print("[+] Installing lbd...")
    subprocess.run("sudo apt install -y lbd", shell=True)
    print("[+] Installing weevely...")
    subprocess.run("sudo apt install -y weevely", shell=True)
    print("[+] Installing wpscan...")
    subprocess.run("sudo apt install -y wpscan", shell=True)
    print("[+] Installing httrack...")
    subprocess.run("sudo apt install -y httrack", shell=True)
    print("[+] Installing sqlmap...")
    subprocess.run("sudo apt install -y sqlmap", shell=True)
    print("[+] Installing hydra...")
    subprocess.run("sudo apt install -y hydra", shell=True)
    print("[+] Installing cupp...")
    main = os.getcwd()
    os.chdir("tools")
    subprocess.run("git clone https://github.com/Mebus/cupp.git", shell=True)
    os.chdir(main)
    print("[+] Installing kwetza...")
    main = os.getcwd()
    os.chdir("tools")
    subprocess.run("git clone https://github.com/sensepost/kwetza.git", shell=True)
    subprocess.run("pip install beautifulsoup4 BeautifulSoup4 bs4", shell=True)
    os.chdir(main)
    print("[+] Installing aircrack-ng...")
    subprocess.run("sudo apt install -y aircrack-ng", shell=True)
    print("[+] Installing apktool...")
    subprocess.run("sudo apt install -y apktool", shell=True)
    print("[+] Installing tor...")
    subprocess.run("sudo apt install -y tor", shell=True)
except:
    print("There is some error... Quitting")