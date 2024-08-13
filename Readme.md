# Brightness  
This is a command line tool to control the brightness level of the screen. 
inspired by the light command-line
# How does it work 
In linux under `/sys/class/backlight/intel_backlight/`, this is the diriver that manipulates the screen brightness.<br> 
By changing the value under `brightness` file i can change the screen brightnes.<br> 
So i wrote a shell script that manipulates `brightness` and handles the user arguments.
### usage 
```bash 
$ brightness --help
-I | -i         : increase the level by 10% 
-D | -d         : decreases the level by 10% 
-U | -u <val>   : increases the level by <val>  
-L | -l <val>   : increases the level by <val>
-R | -r         : returns the birghtness level 
-h | --help     : help 
```

# installation 
- clone the repo 
```bash 
git clone https://github.com/Onizuka09/Birghtness_contorl.git 
```
- run the install script 

```bash 
./install.sh 
```

## TODo:

-[o] process args (not all)<br>
-[x] Increase by 10%  
-[x] decrease by 10%  
-[x] help menu  
-[ ] create a function that automatically seacrches for the backlight driver on the system and returns the path.<br>
-[ ] create an install script<br>
-[ ] Read value and convert it to percentage  
-[ ] Increase by val  
-[ ] decrease by val<br>
-[ ] control other screens backlight 

