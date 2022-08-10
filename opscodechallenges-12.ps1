# Purpose: Retrieves the IPv4 from a created text doc on the desktop and deletes
# the text doc while showing the IPv4 address in the cmd prompt

# Main
# Function:
   # To go to desktop
   # Generate ipconfig report in a text file
   # Selects only the IPv4 Address
   # Removes the text file from the desktop
 
  function Report {cd ~/Desktop $Generate_Network_Report = ipconfig /all > "network_report.txt"
   Select-String -Path "network_report.txt" -Pattern "IPv4 Address"
   Remove-Item -Path "network_report.txt"}

# Calls on the function to run

Report

# String that tells user that the IPv4 was printed andfile was removed

echo "Printed IPv4 Address.File has been deleted."

