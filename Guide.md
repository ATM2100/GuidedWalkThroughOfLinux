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
/usr
```
Each of these directories will get some level explanation at various points in the guide, and any file or directory path that starts with a `/` is referred to as an absolute path. If a path doesn't start with a `/` then it starts from the directory you are currently in and is referred to as a relative path.
Directories in directories or files in directories are separated with a "/". For example, in the `/home/user` file path, `/` indicates that starting from the root directory, go into the `home` directory and then go into the `user` directory. The file path `/home/user/executable.exe` is the same idea, but also take the executable.exe inside the user directory.

The last thing that is worth knowing in terms of file paths are `.` files. These are by default hidden but are important to know exist. A `.` represents this directory, and `..` represents the previous directory. So if you are in `/home/user`, the `.` directory is `/home/user` and the `..` directory is the `/home` directory, and the `../..` directory is the `/` directory. 

An important concept to grasp is the idea of environment variable. The Bourne Again SHell or BASH keeps track of some useful information that is stored in variable denoted with a `$`. An important variable that will be needed throughout the guide is the `$HOME` Environment variable. In general, these variable with be paths to files or directories. The `$HOME` leads specifically to what is called the home directory or simply "home", that is in the `/home/user`. Any user has their own home directory, but that will be covered more in the intermediate section. While there are many ways to find your home directory, another way that is a bit easier to use is the `~/` is shorthand for the home directory.

### auto complete


### Man Pages
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
$ cd ~/a/../a/./ridiculous/../ridiculous/directory/./././../$ directory
```

The explanations for each of these symbols can be found in the "Basics of Files and Their Structure" section. The important things related to the `cd` command specifically that trip a lot of new linux users up is the specifics that are only a little different.

The first command takes you to the home directory. It should be noted that one of the most important commands in the linux system by default takes you to the home directory and not a desktop folder. There is a lot of significance to the home directory that should be pretty clear by how many different ways have already been discussed that reference it.

The second and third commands are different ways to get to the home directory. The fourth is to get to the root directory. And then the fifth command usually trips people up. It changes the directory from your current directory, `/`, to `/home/user`. For this command to work, you have to be in the correct directory. 

It would be a good idea to try and run some of the commands discussed above before continuing. Like most things worth doing, Bash commands and terminal movement takes practice.

The sixth and seventh cd commands listed are very similar and the meanings you should be able to identify the difference. The sixth takes you to `a/ridiculous/directory` relative to your current directory. The seventh does the same thing, but is starting from the home directory.

The eighth is trying to demonstrate the `.` and the `..` directory. Try and follow the command and determine which directory you are in after each `/`. 

#### How to Read Terminal

### Exercise 1.1  
Once logged onto the Debian vm,   
a) print your working directory  
b) list all the contents of the directory  
c) then change your directory to the `basicDirectory`   
d) list the contents of the directory  
e) print your working directory.
### Find in Man Page 1
What does the man page say that the `-a` flag does for the command `ls`? What about the `-l` flag?


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

### Consider adding a prelude to mv cp file path and starting directory //if you aren't renaming a file, you don't need to be explicit
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

#### -r

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

### Text editors via the terminal
#### limitations
#### Vi, Vim, Nvim
#### emacs

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
In case it needs to be stated, a user is someone interacting with an operating system such as Windows, Mac OS or Debian. A user does so through an account. On commercial Windows, there are really only two types of accounts, regular users and administrators. Permissions for linux accounts at a surface level is just as simple. There are regular accounts such as "user" on your vm, and then there is root. 

#### Switch User su

#### sudoers

#### passwd and Account creation

#### warnings about chmod 777 and chown 777

### Basic Networking

#### ping

#### ip

### Package manager

#### apt pacman dnf

#### basic apt

### Basic programming
Teaching the ins and outs of the various programming languages is out of scope. This section is for people who know a little bit about programming and want to learn the use cases for three relatively common languages. This section focuses on the important parts of programming that are abstracted in tools like vscode. I will say that even if you don't do much programming, the bash section could be useful to go through.

#### bash

#### C, C++, gcc, g++

##### make

#### Python

### tar

## Advanced

## Use Cool Things

