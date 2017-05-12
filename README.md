Linux admin just having some fun with PowerShell/giving it a shot. I will
probably add more to this script as I think of things I commonly do in Bash
and wonder what their PowerShell equivalent is.

This script takes websites listed in another file and pings each of them once.
The stdout and stderr are tossed into $null, and the customized output is 
displayed on the screen. Each website is then placed into either the successArr
or failArr array and listed out again at the end.
