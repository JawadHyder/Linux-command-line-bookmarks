# Linux-command-line-bookmarks
A handy tool for nicknaming long directory paths for quick access

# Setup
1) Clone or download repository
2) cd into the downloaded directory
3) run ./init.sh

# Usage
While inside a directoy you want to nicname (e.g ~/project/my-projects/app/app-1/), run:
```sh
$ nameit app1
```
Output:
```sh
Name saved... app1 --> /home/user/project/my-projects/app/app-1
```

Now to go to that directory quickly from anywhere type:
```sh
$ . goto app1
```
Output:
```sh
Going to /home/user/project/my-projects/app/app-1
```
Notice the . (dot) before goto. It is important to runn the command as a dot command. Otherwise add the following to your ~/.bashrc file to be able to run command without the dot
```sh
alias goto=". goto"
```
Run this after adding the above line
```sh
source ~/.bashrc 
```

# Zsh complition
Please enable bash completions if using zsh to get hints on double tab
```sh
autoload bashcompinit
bashcompinit
```

# All done!
