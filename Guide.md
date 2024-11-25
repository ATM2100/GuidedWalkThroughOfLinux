# A Guided Walkthrough of Linux


### Table of Contents

##   Purpose
### Linux User Rants

##  The Basics  

### History and Ecosystem of Linux

### Basics of Files and Their Structure //subdirectories
Before there is anything to talk about in terms of details in Linux, one of the most important notions to grasp is that everything is a file. Files are files, executables are files, folders or directories as they are known on linux are files. The beginning of the linux file system is `/`, and is called the root directory. Every file (including directories) is located somewhere on the file system in relation to the `/` directory. For the most part the root directory looks something like this:
```
/bin
/boot
/dev
/etc
/home
/media
/mnt
/opt
/proc
/root
/sys
/usr
/var
```
All these and more are found on linux systems by default. There is a lot of useful stuff in this directory, but the only ones that are needed for this guide are the following:
```
/bin
/etc
/dev
/home
/root
/proc
```
Each of these directories will get some level explanation at various points in the guide, and any file or directory path that starts with a `/` is referred to as an absolute path. If a path doesn't start with a `/` then it starts from the directory you are currently in and is referred to as a relative path.
Directories in directories or files in directories are separated with a "/". For example, in the `/home/user` file path, `/` indicates that starting from the root directory, go into the `home` directory and then go into the `user` directory. The file path `/home/user/executable.exe` is the same idea, but also take the executable.exe inside the user directory.

The last thing that is worth knowing in terms of file paths are `.` files. These are by default hidden but are important to know exist. A `.` represents this directory, and `..` represents the previous directory. So if you are in `/home/user`, the `.` directory is `/home/user` and the `..` directory is the `/home` directory, and the `../..` directory is the `/` directory. 

An important concept to grasp is the idea of environment variable. The Bourne Again SHell or BASH keeps track of some useful information that is stored in variable denoted with a `$`. An important variable that will be needed throughout the guide is the `$HOME` Environment variable. In general, these variable with be paths to files or directories. The `$HOME` leads specifically to what is called the home directory or simply "home", that is in the `/home/user`. Any user has their own home directory, but that will be covered more in the intermediate section. While there are many ways to find your home directory, another way that is a bit easier to use is the `~/` is shorthand for the home directory.

### auto complete
One of the most important parts of using a terminal that is easy to overlook is auto complete. Any time you enter any command, especially longer ones, pressing tab will automatically complete the rest of the word you are typing. For example, if you want to type the following:
```
cd ~/The/Most/Annoying/Directory/That/Ever/Existed/Nothing/Can/Even/Compare
```
What this kind of command does will be explained later, the important part is that is a lot of typing. What I actually type for a command like this would be something more like this (The new lines are for clarity not actually input):
```
cd ~/T[tab]
Mo[tab]
A[tab]
[tab]
[tab]
[tab][tab]E[tab]
[tab]
[tab][tab]N[tab]
[tab]
[tab]
[tab]
```
There are four main situations when you try to auto complete. The first option is that there is only one option available. In this case, pressing tab will fill in the rest. The `T[tab]` section fills out to `The/`. The second option is that even though you have not input anything, there is only one option available. Most of the example demonstrates this, for example the fourth [tab] would expand to `Directory/`. The third and fourth cases are when there is more than one option available to auto complete when the [tab] key is pressed or there are no options. You can press the [tab] key twice in quick succession to show all the available options. If the double [tab] press shows nothing, then there are no available options.

### Extra help and manuals
#### Man Pages
#### use often when using new commands
#### look for --help -h This will be assumed
#### take a look for extra stuff in the man page that interests you because I don't cover all the useful stuff each command has to offer


### pwd
The Print Working Directory or `pwd` command prints the directory you are currently working in starting from the root directory. When you log into a linux terminal, the original starting point is the `$HOME` directory of the user that was logged into. In this case, that is `/home/user`. When you go to other directories such as `/etc`, pwd will print that directory. There is some subtleties to this command but for the most part it is a simple print where I am on the system.

### ls
LiSt or `ls` is a command that lists the contents of the working directory. Normally, when you create a fresh install of linux or create a new user, this command will show that the home directory is empty for the most part. However, if you run the `ls` command on this particular system's home directory, you will find most of the exercises that will be used throughout this guide. 

The `ls` command has many important aspects that all relate to listing available file in a directory. It is worth remembering the following as all are very useful:
```
$ ls -a
$ ls -l
$ ls -al
```
When the `ls -a` command is run, the out put will be all the files including hidden files. A hidden file starts with a period such as `.filename` and a hidden directory is something like `.directory`. The `ls -l` command shows a "long list" which comes out to be extra information about the files and directories. The permissions, file size and date last opened are all visible in the long list. The last command `ls -al` or `ls -la`, is simply combining the `-l` and `-a` commands into a single flag. All that using both flags does, is make both take affect when the command runs so you get to see both hidden files and the longer list.

### cd
The `cd` command does exactly what it says on the tin. It changes the directory that you are currently in to another directory that is passed as the first argument. A couple examples include:
```
$ cd
$ cd ~/
$ cd /home/user
$ cd /
$ cd home/user
$ cd a/ridiculous/directory
$ cd ~/a/ridiculous/directory
$ cd ~/a/../a/./ridiculous/../ridiculous/directory/./././../directory
```

The explanations for each of these symbols can be found in the "Basics of Files and Their Structure" section. The important things related to the `cd` command specifically that trip a lot of new linux users up is the specifics that are only a little different.

The first command takes you to the home directory. It should be noted that one of the most important commands in the linux system by default takes you to the home directory and not a desktop folder. There is a lot of significance to the home directory that should be pretty clear by how many different ways have already been discussed that reference it.

The second and third commands are different ways to get to the home directory. The fourth is to get to the root directory. And then the fifth command usually trips people up. It changes the directory from your current directory, `/`, to `/home/user`. For this command to work, you have to be in the correct directory. 

It would be a good idea to try and run some of the commands discussed above before continuing. Like most things worth doing, Bash commands and terminal movement takes practice.

The sixth and seventh cd commands listed are very similar and the meanings you should be able to identify the difference. The sixth takes you to `a/ridiculous/directory` relative to your current directory. The seventh does the same thing, but is starting from the home directory.

The eighth is trying to demonstrate the `.` and the `..` directory. Try and follow the command and determine which directory you are in after each `/`. 

### Exercise 1.1  
Once logged onto the Debian vm,   
a) print your working directory  
b) list all the contents of the directory  
c) then change your directory to the `basicDirectory`   
d) list the contents of the directory  
e) print your working directory.
### Find in Man Page 1
What does the man page say that the `-a` flag does for the command `ls`? What about the `-l` flag?


#### How to Read Terminal
When you look at the terminal, you will see something like the following:
```
user@ahostname:~$
root@ahostname:/proc#
```
Everything before the `@` symbol is the user that is currently logged in. Everything between the `@` and the `:` symbols is the hostname. Everything between the `:` and either the `#` or the `$` is the current directory. The first two parts are pretty much always part of any command prompt, which is after the `#` or the `$` where you input commands. The `$` is usually used to denote a standard user. The `#` is usually used to denote either root or superuser privileges. 


### touch  
The `touch` command has two main use cases: updating the time stamp of a file, and creating a file. Lets say that this is what your home directory looks like:
```
~/
|-- File1.txt
|-- File2.txt
`-- File3.txt
```

First, you could update the time stamps of File1.txt, File2.txt, File3.txt. This may not seem very useful at face value, however some assumptions about a file with an older time stamp can be made by computers. A classic example is that `makefile` or `make` will skip files that have not changed since the last time it was "made". That may not make to much sense for now, but the important part is that there are times when all you need to do is update a time stamp for a program to work.

However, most of the time when you are starting out touch is used to create an empty file. Using the example from earlier, if `touch` was used in these ways:
```
$ touch File4.txt
$ touch File5.txt File6.txt File7.txt
```
The result would be:
```
~/
|-- File1.txt
|-- File2.txt
|-- File3.txt
|-- File4.txt
|-- File5.txt
|-- File6.txt
`-- File7.txt
```
Notice that you can pass multiple files into `touch` and each of them will be created as long as there is a space separating them.

### mkdir  
Now that you can make files, time to start organizing them into different directories. `mkdir` stands for MaKe DIRectory. This is the primary way in which files are separated on Linux, and is similar to folders on Windows or Mac. Typically, all `mkdir` is used in the following way:
```
$ mkdir DIRECTORY
```

In practice, you would replace "DIRECTORY" with descriptive names that are easy to remember. A common pitfall for new linux users is to include spaces in their directory and file names. While this can be done, I would suggest following a naming convention such as but not limited to one of the following:
```
this_is_snake_case
this-is-skewer-case
thisIsCamelCase
```

For example, if you want to make these cases into directories, you could use the following commands:
```
mkdir this_is_snake_case
mkdir this-is-skewer-case
mkdir thisIsCamelCase
```

If you chose to include spaces in your files paths, let me know ahead of time so I don't have to watch. What you have to do every time there is a space, you also have to include a `\` before it. There are other ways but that is the main one. Over all, it is better to use any naming convention instead of spaces.

A useful tip is if you want to create multiple directories in one go is to include the `-p` flag. The intuitive thing to do is 
```
$ mkdir DIRECTORY/INADIRECTORY
```
where you first make DIRECTORY and then put INADIRECTORY inside of DIRECTORY. By default however, mkdir will see this as an attempt to make the INADIRECTORY inside the presumed to be existing DIRECTORY. To get more value out of `mkdir`, you can do this instead:
```
$ mkdir -p DIRECTORY/INADIRECTORY
```
This will make DIRECTORY and also make put INADIRECTORY into DIRECTORY.

### mv  
MoVe or `mv` is the command for moving files around as well as renaming them. `mv` takes two arguments, a target and a destination. A lot of the time, `mv` commands look like this:
```
$ mv TARGET DESTINATION
```

So if you had a file structure that looks like this:
```
~/
|-- Directory1
|   |-- File1
|   |-- File2
|   `-- File3
`-- File4
```
For the purposes of the following examples, we will be in `Directory1`. First, there are often different ways to get the same result. Take the following:
```
$ mv File1 ~/File1

$ mv File2 ../File2

$ mv File3 /home/user/File3
```

If you were to run these three commands, they would all move their respective files into the home directory like so:

```
~/
|-- Directory1
|-- File1
|-- File2
|-- File3
`-- File4
```

Notice that while we used the same name for each file that was moved, that does not have to be the case. The file does not even have to change directories, you can essentially move in place to change the name of a file. It is worth noting that 

Start:
```
~/
|-- Directory1
|   |-- File1
|   |-- File2
|   `-- File3
`-- File4
```
Commands:
```
$ mv File1 ~/newFile
$ mv File2 newFile2
$ mv ../File4 File4
```
Result:
```
~/
|-- Directory1
|   `
|-- newFile
|-- newFile2
|-- File3
`-- File4
```
Notice that Directory1 is empty, and that File1-4 are in the `~/` directory and can be renamed. To rename, you simply move the file to where you want it to be but with a different name. 

### cp  
CoPy or `cp`, does exactly what you think. It copies a file and it's contents from one file into a brand new file. Similar to `mv`, it usually takes two arguments, a source and a destination. Just like `mv`, you have to have the correct name of the source, but the destination can be what ever you want.

Going back to this example:
```
~/
|-- Directory1
|   |-- File1
|   |-- File2
|   `-- File3
`-- File4
```
If you were to run the following from the `~/` directory:
```
$ cp Directory1/File1 File5
$ cp Directory1/File2 Directory6/File6
```
you would get:
```
~/
|-- Directory1
|   |-- File1
|   |-- File2
|   |-- File3
|   `-- File6
|-- File4
`-- File5
```
File1 and File5 will be the same as well as File2 and File6. Nice and simple and works in a very similar way to mv, in terms of use.

### rm 
The `rm` command is in charge of ReMoving files, or essentially deleting them. This tool runs counter to the `touch` and `mkdir` that are in charge of making new files and directories. It is important to know that once you run the `rm` command, you can't take it back. There is no ctrl+z, there is no undo and there is no recovering files deleted with rm. Take the following files:
```
~/
|-- Directory1
|   |-- File1
|   |-- File2
|   |-- File3
|   `-- File6
|-- File4
`-- File5
```
Here are a few example of how to use the `rm` command:

```
$ rm Directory1/File1
$ rm Directory1/File2 /home/user/File4
$ rm -rf Directory1
```
If you ran all these commands you would get this result:
```
~/
`-- File5
```
The relative and absolute paths as well as deleting more than one file at a time are what the first two commands are supposed to show. Deleting directories requires flags that have caused much harm to many a new Linux user over the years. 

#### -r, -f and -rf WARNING
When you are removing individual files, you only have to make sure that you are removing the correct files. When you delete a directory, you should be very careful that you aren't deleting anything important. Randomly copying `rm -rf` commands and pasting them into your terminal is a bad plan. Linux had to add counter measures to the famous `rm -rf /` command that literally deletes your entire system. If you want to delete your entire system, there is a flag that you have to include: `--no-preserve-root`. The `-r` stand for recursive, which is what allows the `rm` command to delete files in directories and directories in directories. The `-f` flag is what force the system to actually run the command on all of the files and directories. The `-f` flag is to help make sure that you do not delete important files by accident. When these two flags are combined, you will delete all files and directories in the specified directory. Be very careful when using `rm -rf`, and make sure that it is doing what you want it to, because there is not really a good way to get it back.

### clear 
By simply entering `clear` into the terminal, it clears the screen. A lot of people like to work with their terminal from the top and clear the screen a lot. Personally, I like having previously run commands and their results in the terminal so that I can go back and look through it. It is good to know however, because if you generate a lot of output to the screen and need to sort through small sections at a time, clear can often help make that more manageable.

### redirection


### cat  
The `cat` command is for conCATenating text to the screen, or to the end of a file. In short, cat takes standard input and turns it into standard output. If you are familiar with c++ at all then that should remind you of cin and cout which would be good, but not really needed. Starting with the easiest and most common use of `cat`, outputting the contents of a file.
lets say a file called "textFile.txt" exists and the contents are "This is a text file". If you rand the command
```
$ cat textFile.txt
```
the output to the terminal would be:
```
This is a text file
```

In this case, the input is the "textFile.txt" and the output goes to the terminal. Now understand that the input to cat can be anything, and the output can go to other places than the terminal via the redirection tools. Before actually trying to understand the redirection aspect, I highly recommend using `cat` on a `.txt` file. After that, run the `cat` command, input some text and hit enter. Every time you input some text and hit enter, it will output to the screen. If in the first example the input is the file and the output is the screen, then the second takes user input, and outputs it to the screen. 

### less and more   

### Text editors 
There are a plethora of of text editors that are useable in a terminal environment. If you take the time to learn these text editors, you may find that they are faster than their modern counter parts. The two main terminal based text editors are Vi and emacs, but there is also nano. 

#### limitations
Text editors in the terminal have some limitations that modern text editors like Microsoft Word, Google docs, VSCode and notepad don't have. 

#### Vi, Vim, Nvim
#### nano

### tree  
\#Linux User Rant\#  
Technically, now that you can move through the filesystem at a basic level, you know how to use Linux. Everything after these basics gets into tools to make using these tools easier. A Graphical User Interface (GUI), web browsers, all these things are only accessible after understanding how to interact with your file system and make changes. This is where a lot of windows and apple people argue why should they learn these basics when they can just use the GUI tools that work perfectly well. To that I say when you open file explorer or file finder, from my perspective you have opened your terminal and used the ls command. While there is nothing wrong with the GUI, it has limitations. I believe that tree is the first command that highlights some of these limitations. If you have ever tried to find a specific file, but don't know exactly where it is, tree is one of the first commands I would wish I had when using a GUI to find said file.  
\#End of Rant\#

The `tree` command has a similar role to the `ls` command in that it lists the contents of the current directory. It is different in that it also prints of all the directories and files inside all the directories in the current directory. It can look something like this:
```
~/
|-- Directory1
|   |-- File1
|   |-- File2
|   |-- File3
|   `-- File6
|-- Directory2
|   |-- File7
|   |-- File8
|   |-- File9
|   `-- File10
|-- File11
`-- File12
```  
I would encourage you to go to different directories on your vm and run the tree command a few times to get an idea of what kind of output `tree` gives you.  
Provided that you have done so, you may have noticed that the output of tree can get quite large, or you may not like how it looks, etc. A quick poke through the man page shows the built in ways to filter the output of tree. Here are the ones that I think are useful.
```   
$ tree -a 
$ tree -p
$ tree -h
$ tree -d  
$ tree -L level
$ tree --charset=ascii
```
Since `tree` is a command that has a similar function to `ls`, you can expect that some of the flags and what they mean to be similar, if not in name in function. A good number of these flags are supposed to remind you of using the `ls -al` command.  
Starting with the most obvious one, `tree -a` displays all files, including hidden ones. It is worth noting that unlike the `ls -a` command, `tree -a` does not display the `.` or the `..` directories.
The other two flags that I will mention that relate to the `ls -l` command directly are the `-h` and `-p` flags. The `-h` flag  will print the size of the files and directories with human readability in mind. This means that instead of it just being a big number, the numbers are simplified to 4K, or 2G. For example, take:
```
$ ls -l
drwxrwxr-x  2 root root      4096 June 13  2022  Directory
$ tree -L 1 -h --charset=ascii
[4.0K]  .
`-- [4.0K]  Directory
```
The 4096 from the `ls -l` and the [4.0K] next to the "Directory" from the `tree -h` represent the same number. 

The `-p` flag for the `tree` command is to show the permissions. In the `ls -l` command, the permissions are the first thing printed for each file and directory. For `tree -p`, it is also before each file, just with the extra files that `tree` shows.

One of the flags the helps control how much information is printed is `tree -d`, which only prints directories. There can be value in only printing just the directory structure. Just running the `tree` command can output thgo0 directories and 60,000 files. This is a bit of an extreme example, but it shows how just printing directories can make the broader organization of your system easier to parse.

Another way to limit the output of the tree command is to define how many levels of directories it can print with the `tree -L level` command, where level is replaced with a number. If you want to limit the depth that `tree` prints but not limit the files being printed, `tree -L 2` would make it so that only two subdirectories and all their files are printed. The command would not print any deeper than two subdirectories.

\#Linux User Rants\#  
When you use the command line enough and have seen enough commands you start to make connections between commands. This happens in much the same way that when you use a gui long enough you get used to the ways in which gui's are organized. An example for me is when I told someone that I didn't use tree very much because of how much output there could be. My friend said that he use the `-L` to limit the number of levels. My response was something like "wow, so you just use -L and a number and you only print that many subdirectories?". I would compare this to the experience one might get from figuring out that you can use ctrl + f or command + f to find but if you use ctrl + h or command + F you can find and replace. This kind of reasoning takes experience and practice, but so does using a gui. The command line once learned however is faster.    
\#End of Rant\#  

If you want to change the text to be easier to copy and paste, you can change the character set to something else such as ascii. You could do so with the following:
```
$ tree --charset=ascii
```


### Find in Man Page 
a) If `tree -h` displays the size of a file or directory in a human readable fashion, how would you display it in a human unreadable fashion? (Your looking to print an exact size in bytes)
b) The `ls -l` command also lists the size of the file. Another way to show the size of files would be using the `ls -s` command. As you can imagine, the `-s` stands for size. Since tree has a flag to make file sizes human readable, it stands to reason that ls does as well. What is this flag? What other flags would be needed to make use of this human readable flag?

### grep 
#### wildcards 

## Intermediate


### uname

The `uname` command is used to find information about the system's operating system and architecture. Most often just include the `-a` flag. The `-a` flag is for displaying all the information `uname` provides. When that is too inconvenient to parse, I usually view the man page to find one particular flag.

Some of the more frequent flags that would be needed are the following:
```
-n
-v
-p
```
`-n` will display your hostname. For default bash, your hostname can be found as part of the command prompt but that is not always the case. Different terminal configurations will sometimes not include your hostname as part of the command line. 

The `-v` flag will show the kernel version. Since all Linux based systems are forked from the Linux Kernel, this will usually be a good way to figure out what specific distribution you are working on. There are other ways that will be covered later that are better, but this is a fairly easy one to keep track of.

When the `-p` flag is used, uname will show the architecture of the processor. At the time of writing, this will likely be some form of x86_64.

### accounts
In case it needs to be stated, a user is someone interacting with an operating system such as Windows, Mac OS or Debian. A user does so through an account, and this section will go through some of the basics of accounts. On commercial Windows, there are really only two types of accounts, regular users and administrators. Permissions for linux accounts at a surface level is just as simple. There are regular accounts such as "user" on your vm, and then there is root. Root is the highest privileged account on your system. 

\#Warning\#  
Do not share your root password. Anyone with your root password has access to your entire system and can lock you out of your own computer.

Also do not run random commands as root because you can pretty easily destroy something important and not be able to undo the damage. Anyone using root or "sudo" is assumed to know the risk of making changes to your computer. For example, lets say you want to install an app like steam.     
\#End warning\#  

Installing anything and removing some files among other things to the computer will make changes to the system and therefore require elevated privileges. There are two main ways in which this can be done, add your account to the sudoers file or to switch users.

#### Switch User su  
The main use of `su` is to switch the current user. Since it is very easy to damage your computer with random commands on linux, normally the main account being used has limited privileges. `su` allows you to switch to an account with higher privileges and run the needed commands. This does assume that you know the password to the account you are trying to access, but for a standard desktop that should not be an issue. Here are some examples of `su` being used:
```
$ su
$ su -
$ su - root
$ su - user
```

It is worth noting that `su` defaults to switching to the root user, so the first three commands will switch you to the root user after you enter the password. For the fourth `su` command will switch to the `user` account, or whatever you replace `user` with, provided you know the password.  

It is worth noting that each user has a different home directory. When you switch users, you have different permissions and different capabilities. The most important part to remember about switching accounts however is that your home directory also changed to the new account. a `cd ~` will take you to the current users home directory, not to `user`'s home directory. This means that when you `su - root`, the `~` means the root user's home directory. In terms of file system location, this is the `/root` directory, distinct from all other user's home directories being in `/home`.

Once you have switched users and run the needed commands, there are a few ways in which you can go back to a regular user.

#### whoami  
If you ever forget what user you are currently logged into, running the command `whoami` will output the current user. There is nothing else to this command, it just outputs the user that is currently logged in.

#### sudoers  
Another way to get temporary elevated privileges that does not require switching accounts is to start the command with `sudo` or "Super User DO". It is worth noting that `sudo`, while useful is not on all Unix based systems. It is possible that in the future `sudo` will be replaced with `run0`. For now, I will only be going over sudo because of how prolific it is. It is worth noting that the main reason `sudo` would get replaced is because it is bulky and configuring sudo is not something standard users care about.  

To make your `user` account allowed to use `sudo`, you need to add `user` to the sudoers file, which is `/etc/sudoers`. For this exercise, just copy and past the root permissions such that you have this:
```
root ALL=(ALL:ALL) ALL
user ALL=(ALL:ALL) ALL
```
This will make it so that the `user` account can use the `sudo` command to do anything. In a professional environment, this may be a bad idea, but for a private computer it's just fine.

### /etc  
The `/etc` directory is where most system configurations are. You already know the the sudoers file is in `/etc`, but you will find a lot of other useful files in here. Some what you will find here are the following:
```
hostname
passwd
sudoers
timezone
```
The `hostname` file simply contains the hostname of the computer. You probably wont ever need to get the hostname from here, but you can. If you want to change the hostname, this is one of the files that you should expect to change as a result.




#### warnings about chmod 777 and chown 777
With great power comes great responsibility. When you are given the power to make any change to the system and the system will let you, it can be easy to expose your computer to danger. Some of the more important commands to look out for are CHange OWNer and CHange MODe (`chown` and `chmod`). If something online says to `chmod` or `chown` a file or directory, be very carful, especially with 777. When you run `ls -l` you get output like this:  
drwxrw-r-x  
This shows what users and groups have access to certain files and directories. If you don't know how to count in binary, the explanation of what the 777. Know that it gives every user access to the file or directory the `chown` or `chmod` command is run on and it poses a significant security risk.

This is how the 777 relates to the permissions:
```
 |7  |7  |7  |
-|rwx|rwx|rwx|
```

In the same way that three bits has eight combinations of numbers, there are eight ways to configure permissions. A "000" would be no one is allowed to do anything with this file/directory. Adding one would allow for "execute", adding two allows for "write" and adding four adds "read" permissions. When you want to have more than one of those three privileges just add the ones you want together.

### Exercise 777 meaning
Starting with `0 = ---` being correct, show that you can make all 8 combinations of permissions with the following key:  
1 = x  
2 = w  
4 = r 

0 = ---  
1 = ---  
2 = ---  
3 = ---  
4 = ---  
5 = ---  
6 = ---  
7 = ---  


### Basic Networking  
Linux is often used for it's networking tools. I will briefly go over two of the most important tools for networking on linux: ping and ip.

#### ping  
ping is used to test connection to a specific IP address. Running commands such as the following is common practice when you are unsure whether or not you are connected to the internet.
```
$ ping 8.8.8.8
$ ping google.com
```
It is is worth noting that these two commands are essentially the same thing if your DNS is set up properly. If you don't know what a DNS server is, it takes a human readable URL and turns it into an IP address such as `8.8.8.8`. If you are setting up servers, extra vm's that need to be connected to the host, or just checking if you can connect to the internet, ping is often how you do so.

\#Warning\#
If you are going to try and run the ping command a lot in a program, know that `ping` is a really good way to DOS someone. If you use ping, make sure that it is not in an infinite loop and not letting it go on forever. It might get perceived as a threat if you are running hundreds of ping commands all targeting the same place. 
\#End Warning\#

#### ip
Some of the people with a little bit of experience with networking on Linux may be a little surprised that I did not include the `ifconfig` command anywhere here. That is because the `ifconfig` command is currently being phased out and replaced by the `ip` command. The `ifconfig` command was released originally in 1983. While you will still see if from time to time, you should learn the `ip` command instead because it is a newer and generally more powerful tool.

For the purposes of this guide, I will only be going over one part of the `ip` command, and that is the address show section. Here are a few of the common ways to run this command:
```
$ ip addr
$ ip a
$ ip a show
$ ip address show
$ ip address
```
The `ip` command will execute for you any of these commands as if the command run was `ip address show`. There is only one connection that is guaranteed to be there regardless of the system and the internet connections. This connection is the `lo` connection and is your loopback address. For this guide, you hopefully see at least one other connection. If you don't and can't ping anything then you will not be able to do the following sections fully:  
basic apt  
Setting Up a Basic Desktop  
These sections are some of the most useful for learning how to use Linux, I do recommend getting connected to the internet.

### Package manager  
Package managers are how you install software on Linux distributions. When you want to get packages for a new desktop or a different programming language, you get it through a package manager. Getting a `.zip` from a website or more accurately a `.deb` or a `.tar` which are compressed files on Linux is uncommon. You typically want to get your software from your package manager, which does have it's advantages which we will go over in the "basic apt" section.

#### apt pacman dnf  
There are various different package managers for the different distributions. Here are some of the most common package managers with their most common distributions:  
apt: Debian and Ubuntu  
pacman: Arch and Manjaro  
dnf: Fedora, CentOS, Red Hat Enterprise Linux (RHEL)  
Each are optimized for different use cases, and have different versions of packages depending on distribution goals. The two extremes are Debian which prizes stability and Arch which wants to have the most up to date packages possible. The dnf package manager in my experience is the easiest to understand or to learn, but is fairly slow in comparison to the others.  

#### basic apt  
The most important commands for the apt package manager for someone new to Linux are the following:
```
$ apt update
$ apt upgrade
$ apt install [package]
$ apt remove [package]
$ apt autoremove
```
It is worth noting that all of these require elevated privileges. You will need to run these commands with `sudo` or as root to get them to work. 

Every time you do anything with a package manager, you should update and upgrade before doing anything else. As a new user, I was very confused on what the difference between updating and upgrading was. These two commands are quite distinct in purpose so it is important to do both and in the correct order. Packages are held in repositories that are managed and receive changes based on distribution. Note that just because the same package manager is used on two different distributions does not mean that the packages are the same. If you want to update the where the package manager thinks all the repositories are and that it knows the most recent version of all the packages then you run an update. If you want to make sure that all the packages currently installed on your machine are up to date, you do an upgrade. Please note that you should always run update first so that when you upgrade the most recent packages are installed. 

I can not emphasize how important updating and upgrading are to do before doing anything else with a package manager. Finding the right package is a skill, but the internet can help. You should expect to learn how to the `apt search`, `apt list` and `apt cache` at some point but it is not necessary starting skill of the Linux experience. If you want to start learning these parts of the `apt`, it is worth noting that because the `apt` has a reference to all it's repositories on the machine, you do not need elevated privileges to search for specific packages.

After updating, upgrading and finding the right package, you will either want to install or uninstall that package from your machine. All you have to do is run the command with `install` or `remove`. If installing a package require other packages, it will ask if that is okay and require a confirmation in the form of a "y". If you enter an "n", that indicates that you are not okay with installing the required packages and will abort the install. `remove` is how you uninstall the packages and has a similar process for deleting the required packages.
  

### tar
`tar` stands for Tape ARchive, and is an old form of compression. Much like the compression software `7zip` that you may be familiar with, `tar` is one of the primary ways to extract and compress files on Linux. The main things you need to know about `tar` are the flags for compression and extraction. Here are some examples:
```
tar -cf compressed.tar /uncompressed
tar -x
```

## Advanced



