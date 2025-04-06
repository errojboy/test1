update_animation()
{	
birthday_message=("  _   _      _       ____     ____   __   __       ____               ____      _____    _   _    ____       _      __   __  |'| |'| U  /\"\  u U|  _\"\ uU|  _\"\ u\ \ / /    U | __\")u    ___   U |  _\"\ u  |_ \" _|  |'| |'|  |  _\"\  U  /\"\  u  \ \ / / /| |_| |\ \/ _ \/  \| |_) |/\| |_) |/ \ V /      \|  _ \/   |_\"_|   \| |_) |/    | |   /| |_| |\/| | | |  \/ _ \/    \ V /  U|  _  |u / ___ \   |  __/   |  __/  U_|\"|_u      | |_) |    | |     |  _ <     /| |\  U|  _  |uU| |_| |\ / ___ \   U_|\"|_u  |_| |_| /_/   \_\  |_|      |_|       |_|        |____/   U/| |\u   |_| \_\   u |_|U   |_| |_|  |____/ u/_/   \_\    |_|    //   \\\  \\\    >>  ||>>_    ||>>_ .-,//|(_      _|| \\\_.-,_|___|_,-.//   \\\_  _// \\\_  //   \\\   |||_    \\\    >>.-,//|(_  (_\") (\"_)(__)  (__)(__)__)  (__)__) \_) (__)    (__) (__)\_)-' '-(_/(__)  (__)(__) (__)(_\") (\"_) (__)_)  (__)  (__)\_) (__) ")
	new_frame=""
	confetti="*"
	counter=0
	for ((i=0;i<7;i++))
	do
		new_frame=""
		for ((j=0; j<124; j++))
		do
			if (( RANDOM % 20 == 0))
			then
				new_frame+="${confetti:$(( RANDOM % ${#confetti} )):1}"
			else
				new_frame+="${birthday_message:counter:1}"
			fi
			((counter++))
		done
		echo "$new_frame"
	done
}

while true
do
	update_animation
	sleep .2
	clear
done
