$sites = "<enter path to file with sites>"

echo "Searching for $sites"
start-sleep 3

if (! (Test-Path $sites)) {
    echo "The file specified does not exist"
    exit
}

$successArr = @()
$failArr = @()


foreach($line in Get-Content $sites) 
{
    ping $line -n 1 > $null
        if ($? -eq "True") {
            echo "`nPinging $line was successful!"
            $successArr += $line
        }
        else {
            echo "`nPinging $line was not successful"
            $failArr += $line
        }
}

echo "`n`nAs a recap, these were the sites that were succesfully pinged:"
foreach($x in $successArr)
{
    echo "`n$x"
}

echo "`n`nAnd here are the sites that failed:"
foreach($x in $failArr)
{
    echo "`n$x"
}
