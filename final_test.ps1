function Update-Animation {
    $birthday_message = "  _   _      _       ____     ____   __   __       ____               ____      _____    _   _    ____       _      __   __  |'| |'| U  /`"\  u U|  _`"\ uU|  _`"\ u\ \ / /    U | __`")u    ___   U |  _`"\ u  |_ `" _|  |'| |'|  |  _`"\  U  /`"\  u  \ \ / / /| |_| |\ \/ _ \/  \| |_) |/\| |_) |/ \ V /      \|  _ \/   |_`"_|   \| |_) |/    | |   /| |_| |\/| | | |  \/ _ \/    \ V /  U|  _  |u / ___ \   |  __/   |  __/  U_|`"|_u      | |_) |    | |     |  _ <     /| |\  U|  _  |uU| |_| |\ / ___ \   U_|`"|_u  |_| |_| /_/   \_\  |_|      |_|       |_|        |____/   U/| |\u   |_| \_\   u |_|U   |_| |_|  |____/ u/_/   \_\    |_|    //   \\  \\    >>  ||>>_    ||>>_ .-,//|(_      _|| \\_.-,_|___|_,-.//   \\_  _// \\_  //   \\   |||_    \\    >>.-,//|(_  (_`") (`"_)(__)  (__)(__)__)  (__)__) \_) (__)    (__) (__)\_)-' '-(_/(__)  (__)(__) (__)(_`") (`"_) (__)_)  (__)  (__)\_) (__) "
    $confetti = "*"
    $counter = 0

    for ($i = 0; $i -lt 7; $i++) {
        $new_frame = ""
        for ($j = 0; $j -lt 124; $j++) {
            if ((Get-Random -Maximum 20) -eq 0) {
                $new_frame += $confetti.Substring((Get-Random -Maximum $confetti.Length), 1)
            } else {
                $new_frame += $birthday_message.Substring($counter, 1)
            }
            $counter++
        }
        Write-Output $new_frame
    }
}

function Print-Message {
    $message = @"
hey heyy, vandaag is het een speciale dag!


ik weet nog dat je me ooit zei dat je van pruts dingetje hield dus geniet van je magneet steentje(ze zijn echt verslavend xddd)
Ik ga je niet telang vervelen op je verjaardag maar beloof me dat je gaat genieten van jouw dagje en hopelijk tot snel :))
"@
    Write-Output $message
}

while ($true) {
    Print-Message
    Update-Animation
    Start-Sleep -Milliseconds 200
    Clear-Host
}
