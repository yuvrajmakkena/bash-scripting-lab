#below line is called shebang
#!/bin/bash
echo hello world


#Check if a command is a shell builtin or an executable in the filesystem
#Builtins like cd, echo, export are compiled into the shell itself.
#External commands like ls, grep, awk are separate binaries on disk.
#You can use type or which command to check if a command is builtin or external

# yuvi@yuvi Bash-practice % type cd   
# cd is a shell builtin
# yuvi@yuvi Bash-practice % which cd  
# cd: shell built-in command
# yuvi@yuvi Bash-practice % type ls 
# ls is /bin/ls
# yuvi@yuvi Bash-practice % which ls  
# /bin/ls
# yuvi@yuvi Bash-practice % file /bin/ls
# /bin/ls: Mach-O universal binary with 2 architectures: [x86_64:Mach-O 64-bit executable x86_64] [arm64e:Mach-O 64-bit executable arm64e]
# /bin/ls (for architecture x86_64):      Mach-O 64-bit executable x86_64
# /bin/ls (for architecture arm64e):      Mach-O 64-bit executable arm64e

#Arguments

#Positional paremeters
