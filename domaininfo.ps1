#!/bin/bash

# Install whois on your Ubuntu VM.
  Sudo apt install whois 

# Add to your bash script a sixth option that calls a function to:
# Make a user input string. Presumably the string is a domain name such as Google.com
# Run whois against a user input string.
# Run dig against the user input string.
# Run host against the user input string.
# Run nslookup against the user input string.  
# Output the results to a single .txt file and open it with your favorite text editor.
# For this challenge you must use at least one variable and one function.

Getinfo () 
    {read -p "Please type in URL for more info" url
    whois $url >> domaininfo.txt
    dig $url >> domaininfo.txt
    host $url >> domaininfo.txt
    nslookup $url >> domaininfo.txt}

Getinfo

nano domaininfo.txt


# End
