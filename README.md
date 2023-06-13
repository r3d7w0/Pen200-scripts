# OSCP Pn200 scripts
place to hold any and all default, modified, or custom scripts & exploits used during the pen200 OffSec course. 

## Content
### General Scripts 
    - parse-offsec-html-IP-creds-list.sh
        - during the course, you have to spin up and down various walkthrough or exercies VM(s). this script copies the html in that modal that lists the IP addresses and saves the output to a new file to be used in a target list for nmap or other tool. 

### Pre-Auth

### Exploits 

### Webshells
-  wordpress-webshell.php 
    - this is just a modified version of kali's /usr/share/webshell/php/php-backdoor.php
    - added some JS to show the command results on the same page vs following the web request and having to hit the back button to send another command
        - TODO: have the other parts do the same (view file, list directory, etc.)  

### Post-Exploit 
