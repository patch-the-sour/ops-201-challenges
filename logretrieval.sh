# Task 1: Output all events from the System event log that occurred in the last 24hrs to a file on your desktop named last_24.txt

$Begin = Get-Date -Date '8/03/2022 10:00:00'
$End = Get-Date -Date '8/04/2022 10:00:00'
Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End > C:\Users\patch\Desktop\last_24.txt

# Task 2: Output all “error” type events from the System event log to a file on your desktop named errors.txt.

get-eventlog -logname system -entrytype warning >C:\users\patch\desktop\errors.txt

# Task 3: Print to the screen all events with ID of 16 from the System event log.

get-eventlog -logname system -instanceid 16

# Task 4: Print to the screen the most recent 20 entries from the System event log.

get-eventlog -logname system -newest 20

# Task 5: Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).

$Events = Get-EventLog -LogName System -newest 500
$Events | Group-object -property source -NoElement |sort-object -property count -descending |format-table -auto
