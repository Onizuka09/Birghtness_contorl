# Brightness_control  
This is a command line tool to control the brightness level of the screen. 
inspired by the light command-line
# How does it work 
In linux under `/sys/class/backlight/intel_backlight/`, this is the diriver that manipulates the screen brightness.<br> 
By changing the value under `brightness` file i can change the screen brightnes.<br> 
So i wrote a shell script that manipulates `brightness` and handles the user arguments.
### usage 
```bash 
$ Brightness_control --help
-I | -increase          : increase the level by 10% 
-D | --decrease         : decreases the level by 10% 
-U | --upper <val>      : increases the level by <val> in % 
-L | --lower <val>      : increases the level by <val> in %
-R | --read             : returns the birghtness level 
-h | --help             : help 
-v | --version          : version 
```

# installation 
- clone the repo 
```bash 
git clone https://github.com/Onizuka09/Birghtness_contorl.git 
```

By default the script assumes that the backlight driver is `intel_backlight` and its located under `/sys/class/backlight`.<br> 
To update this path you this variable: 
```bash 
export BL_BASE_DIR="YOU_PATH_BACKLIGHT"
```
- run the install script 
You can set an installation PATh also default `/usr/bin/`
```bash 
# optional 
export BL_INST_PATH="YOUR_PATh"
# to install 
sudo ./install.sh 
```

## TODo:

-[x] process args<br>
-[ ] args error handling
-[x] Increase by 10%  
-[x] decrease by 10%  
-[x] help menu  
-[x] create an install script<br>
-[x] Read value and convert it to percentage  
-[x] Increase by val  
-[x] decrease by val<br>
-[ ] control other screens backlight 

