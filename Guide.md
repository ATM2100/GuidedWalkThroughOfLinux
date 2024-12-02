# A Guided Walkthrough of Linux


## Table of Contents

##   Purpose


##  The Basics 

### History and Ecosystem of Linux
The very abridged version of the history of Linux is that it was initially only developed by a single guy named Linus Torvalds. At the time, Unix was king of the market, and Torvalds decided to make an open-source Unix clone. Linux is not an operating system but a kernel. The "Linux operating system" has lost popularity over the years in favor of building an operating system on top of the Linux kernel. In the Linux community, these operating systems that share the Linux kernel are called "Distributions" or "Distros" for short. Some of the most common distros are Ubuntu, Debian, Arch, and Fedora. The easiest to learn is Ubuntu, but Debian and Fedora are not much harder and have generally been better in my experience. In this guide, you will be using Debian.

### Basics of Files and Their Structure
Before there is anything to talk about in terms of details in Linux, one of the most important notions to grasp is that everything is a file. Files are files; executables are files, and folders are called directories on Linux and are files. The beginning of the Linux file system is `/,` and it is called the root directory. Every file (including directories) is located somewhere on the file system in relation to the `/` directory. For the most part, the root directory looks something like this:
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
All these and more are found on Linux systems by default. There is a lot of helpful stuff in this directory, but the only directories that you need for this guide are the following:
```
/etc
/dev
/home
/root
/proc
```
The guide will explain each of these directories at various points. Any file or directory path that starts with a `/` is called an absolute path. If a path doesn't start with a `/`, it starts from the directory you are currently in and is a relative path.
Directories in directories or files in directories are made separate with a "/." For example, in the `/home/user` file path, `/` indicates that starting from the root directory, go into the `home` directory and then go into the `user` directory. The file path `/home/user/executable.exe` is the same idea, but also take the executable.exe inside the user directory.

The last thing that is worth knowing in terms of file paths is `.` files. These are by default hidden but are important to know exist. A `.` represents this directory, and `..` represents the previous directory. So if you are in `/home/user`, the `.` directory is `/home/user` and the `..` directory is the `/home` directory, and the `../..` directory is the `/` directory. 

An important concept to grasp is the idea of environment variables. The Bourne Again SHell or BASH keeps track of useful information stored in variables denoted with a `$`. An important variable you will need throughout the guide is the `$HOME` Environment variable. The `$` variables will generally be paths to files or directories. The `$HOME` leads to the home directory or simply "home" in the `/home/user`. Any user has their own home directory, which will be covered more in the intermediate section. While there are many ways to find your home directory, another way that is a bit easier is the `~/` shorthand for the home directory.

### autocomplete
Autocomplete is one of the most important parts of using a terminal that is easy to overlook. Any time you enter any command, especially longer ones, pressing the tab will automatically complete the rest of the word you are typing. For example, if you want to type the following:
```
cd ~/The/Most/Annoying/Directory/That/Ever/Existed/Nothing/Can/Even/Compare
```
What this kind of command does will be explained later; the important part is that it is a lot of typing. What I actually type for a command like this would be something more like this (The new lines are for clarity, not actually input):
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
There are four main situations when you try to auto-complete. The first option is that there is only one option available. In this case, pressing the tab key will fill in the rest. The `T[tab]` section fills out to `The/`. The second option is that even though you have not input anything, only one option is available. Most examples demonstrate this; for example, the fourth [tab] would expand to `Directory/`. The third and fourth cases are when there is more than one option available to auto-complete when you press the [tab] key or there are no options. You can press the [tab] key twice quickly to show all the available options. If the double [tab] press shows nothing, there are no options available.

### Extra help and manuals

#### Man Pages
#### use often when using new commands
#### look for --help -h This will be assumed
#### take a look for extra stuff in the man page that interests you because I don't cover all the useful stuff each command has to offer


### pwd
The Print Working Directory or `pwd` command prints the directory you are currently working in starting from the root directory. When you log into a Linux terminal, the original starting point is the `$HOME` directory of the user you logged into. In this case, that is `/home/user`. When you go to other directories such as `/etc`, `pwd` will print that directory. There are some subtleties to this command, but for the most part, it is a simple print where I am on the system.

### ls
LiSt or `ls` is a command that lists the contents of the working directory. Usually, when you create a fresh install of Linux or create a new user, this command will show that the home directory is empty for the most part. However, if you run the `ls` command on this particular system's home directory, you will find most of the exercises you will use throughout this guide. 

The `ls` command has many important aspects relating to listing available files in a directory. It is worth remembering the following as all are very useful:
```
$ ls -a
$ ls -l
$ ls -al
```
When the `ls -a' command is run, the out put will be all the files including hidden files. A hidden file starts with a period such as `.filename` and a hidden directory is something like `.directory`. The `ls -l` command shows a "long list" which comes out to be extra information about the files and directories. The permissions, file size and date last opened are all visible in the long list. The last command `ls -al` or `ls -la`, is simply combining the `-l` and `-a' commands into a single flag. Using both flags makes both take effect when the command runs so that you can see both hidden files and the longer list.

### cd
The `cd` command or "Change Directory" does exactly what it says on the tin. It changes the directory you are currently in to another directory, which is the first argument. A couple of examples include:
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

You can find explanations for each of these symbols in the "Basics of Files and Their Structure" section. 

The first command takes you to the home directory. It should be noted that one of the most important commands in the Linux system, by default, takes you to the home directory and not a desktop folder. The home directory is very significant, and the many different ways that have already been discussed that reference it should make this pretty clear.

The second and third commands are different ways to access the home directory. The fourth is to get to the root directory. The fifth command usually trips people up. It changes the directory from your current directory, `/`, to `/home/user`. For this command to work, you have to be in the correct directory. 

Before continuing, it would be a good idea to try running some of the commands discussed above. Like most things worth doing, Bash commands and terminal movement take practice.

The sixth and seventh `cd` commands listed are very similar, and you should be able to identify the difference in their meanings. The sixth takes you to `a/ridiculous/directory` relative to your current directory. The seventh does the same thing but starts from the home directory.

The eighth tries to demonstrate the `.` and the `..` directory. Try and follow the command and determine which directory you are in after each `/`. 

### Exercise cd/ls/pwd  
Once logged onto the Debian VM,   
a) print your working directory  
b) list all the contents of the directory  
c) then change your directory to the `exercises`   
d) list the contents of the directory  
e) print your working directory.  
From this point on, All exercises will start in this directory.

### Find in Man Page ls
What does the man page say that the `-a' flag does for the command `ls`? What about the `-l` flag?

### Exercise autocomplete
Change your directory to the `~/exercises/autoComplete/` directory.

a) Change your directory to: `The/most/Annoying/directory/That/EVER/Existed/Possibly/ever/But/I/Guess/There/Could` 
I recommend using auto-complete and not typing all that out.



#### How to Read Terminal
When you look at the terminal, you will see something like the following:
```
user@ahostname:~$
root@ahostname:/proc#
```
Everything before the `@` symbol is the current user. The hostname is everything between the `@` and the `:` symbols. The current directory is everything between the `:` and either the `#` or the `$`. The first two parts are always part of any command prompt, after the `#` or the `$` where you input commands. The `$` is usually used to denote a standard user. The `#` is usually used to denote either root or superuser privileges. 


### touch  
The `touch` command has two main use cases: updating the time stamp of a file and creating a file. Let's say that this is what your home directory looks like:
```
~/
|-- File1.txt
|-- File2.txt
`-- File3.txt
```

First, you could update the time stamps of File1.txt, File2.txt, and File3.txt. This may seem like it is not very useful at face value. However, some assumptions about files with old timestamps can lead to confusion between computers and users. A classic example is that `makefile` or `make` will skip files that have not changed since the last time it was "made." That may not make much sense for now, but the important part is that there are times when all you need to do is update a time stamp for a program to work.

However, when you start out, `touch` is used to create an empty file. Using the example from earlier, if `touch` was used in these ways:
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
Notice that you can pass multiple files into `touch`, and the computer will create each one if a space separates them.

### mkdir  
Now that you can make files, it's time to start organizing them into different directories. `mkdir` stands for MaKe DIRectory. `mkdir` is the primary way you organize files on Linux. Directories are similar to folders on Windows or Mac. Typically, all `mkdir` is used in the following way:
```
$ mkdir DIRECTORY
```

In practice, you would replace "DIRECTORY" with descriptive names that are easy to remember. A common pitfall for new Linux users is to include spaces in their directory and file names. While you can do this, I would suggest following a naming convention such as but not limited to one of the following:
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

If you choose to include spaces in your file paths, prepare to suffer because you denote a space in file paths with `\ `. What you have to do every time there is a space, you also have to include a `\` before it. There are other ways but that is the main one. Overall, it is better to use any naming convention instead of spaces.

A useful tip to create multiple directories in one go is to include the `-p` flag. The intuitive thing to do is 
```
$ mkdir DIRECTORY/INADIRECTORY
```
Where you first make DIRECTORY and then put INADIRECTORY inside of DIRECTORY. By default, however, mkdir will see this as an attempt to make the INADIRECTORY inside the presumed to be existing DIRECTORY. To get more value out of `mkdir`, you can do this instead:
```
$ mkdir -p DIRECTORY/INADIRECTORY
```
This will make DIRECTORY and also put INADIRECTORY into DIRECTORY.

### mv  
MoVe, or `mv`, is the command for moving files around and renaming them. `mv` takes two arguments, a target and a destination. A lot of the time, `mv` commands look like this:
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

Notice that while we use the same name for each file before and after the `mv` command, that does not have to be the case. The file does not have to change directories; you can move in place to change its name. It is worth noting that `mv` can change the names of files.

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
Notice that Directory1 is empty and that File1-4 has been renamed and are now in the `~/` directory. To rename, you simply move the file to where you want it to be but with a different name. 

### Exercise creation
Start in the `~/exercises/creation/`.  

a) create the following files:  
temp.out  
test.txt  
main.cpp  
customBashScript.sh  
RandomFile  
b) Make the following directories in the `~/exercises/creation/` directories:  
1. Empty
2. temporary  
3. A/Simple/Directory    

c) Move the "temp.out" into the "temporary" directory.  
d) Move the "RandomFile" into the directory "A/Simple/Directory"  
e) Rename "customBashScript.sh" to "bashScript.sh"  

### tree  
\#Linux User Rant\#  
Technically, now that you can move through the filesystem at a basic level, you know how to use Linux. After these basics, everything gets into tools to make using these tools easier. A Graphical User Interface (GUI), web browsers, all these things are only accessible after understanding how to interact with your file system and make changes. This is where many Windows and Apple people argue why they should learn these basics when they can use the GUI tools that work perfectly well. To that, I say when you open File Explorer or File Finder, from my perspective, you have opened your terminal and used the ls command. While there is nothing wrong with the GUI, it has limitations. I believe that tree is the first command that highlights some of these limitations. If you have ever tried to find a specific file, but don't know exactly where it is, tree is one of the first commands I would wish I had when using a GUI to find said file.  
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
Provided that you have done so, you may have noticed that the output of the tree can get quite large, or you may not like how it looks, etc. A quick poke through the man page shows the built-in ways to filter the output of the tree. Here are the ones that I think are useful.
```   
$ tree -a 
$ tree -p
$ tree -h
$ tree -d  
$ tree -L level
$ tree --charset=ascii
```
Since `tree` is a command with a function similar to `ls`, you can expect some of the flags and what they mean to be similar, if not in name in function. A good number of these flags are supposed to remind you of using the `ls -al` command.  
Starting with the most obvious one, `tree -a' displays all files, including hidden ones. It is worth noting that unlike the `ls -a' command, `tree -a' does not display the `.` or the `..` directories.
The other two flags that I will mention that relate to the `ls -l` command directly are the `-h` and `-p` flags. The `-h` flag will print the size of the files and directories with human readability in mind. The result means that instead of being just a big number, the numbers simplify to 4K, or 2G. For example, take:
```
$ ls -l
drwxrwxr-x  2 root root      4096 June 13  2022  Directory
$ tree -L 1 -h --charset=ascii
[4.0K]  .
`-- [4.0K]  Directory
```
The 4096 from the `ls -l` and the [4.0K] next to the "Directory" from the `tree -h` represent the same number. 

The `-p` flag for the `tree` command is to show the permissions. In the `ls -l` command, the permissions are the first thing printed for each file and directory. For `tree -p`, it is also before each file, just with the extra files that `tree` shows.

One of the flags that helps control how much information is printed is `tree -d', which only prints directories. There can be value in printing only the directory structure. Just running the `tree` command can output 60,000 directories and files. Often, however, you will use `tree` on a smaller scale, which is a very good way to get an idea of the organization of a part of your system on a small scale.

Another way to limit the output of the tree command is to define how many levels of directories it can print with the `tree -L level` command, where you replace the level with a number. If you want to limit the depth that `tree` prints but not limit the files, `tree -L 2` would only print two subdirectories. 

\#Linux User Rants\#  
When you use the command line enough and have seen enough commands you start to make connections between commands. This happens in much the same way that when you use a gui long enough you get used to the ways in which gui's are organized. An example for me is when I told someone that I didn't use `tree` very much because of how much output there could be. My friend said he uses the `-L` to limit the number of levels. My response was, "wow, so you just use -L and a number and you only print that many subdirectories?". I would compare this to the experience one might get from figuring out that you can use ctrl + f or command + f to find, but if you use ctrl + h or command + F, you can find and replace. This reasoning takes experience and practice, as does using a gui. The command line, once learned, however, is faster.    
\#End of Rant\#  

If you want to make the text easier to copy and paste, you can change the character set to something else, such as ASCII. You could do so with the following:
```
$ tree --charset=ascii
```


### Find in Man Page tree and ls
a) If `tree -h` displays the size of a file or directory in a human-readable fashion, how would you display it in a human-readable fashion? (You're looking to print an exact size in bytes)  
b) The `ls -l` command lists the file size. Another way to show the size of files would be using the `ls -s' command. As you can imagine, the `-s' stands for size. Since `tree` has a flag to make file sizes human readable, it stands to reason that ls does as well. What is this flag? What other flags would be needed to use this human-readable flag?


### cp  
CoPy, or `cp`, does exactly what you think. It copies a file and its contents from one file into a brand new file. Like `mv`, it takes two arguments: a source and a destination. Just like `mv`, you have to have the correct name of the source, but the destination can be whatever you want. 

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
$ cp Directory1/File1 .
$ cp File4 Directory6/File6
```
You would get the following:
```
~/
|-- Directory1
|   |-- File1
|   |-- File2
|   |-- File3
|   `-- File6
|-- File1
`-- File4
```
File1 and File5 will match, as will File2 and File6. It's nice and simple and works very similarly to mv in terms of use. Note that the `.` in the destination will imply that you want to keep the name exactly the same.

### rm 
The `rm` command is in charge of ReMoving files or essentially deleting them. This tool runs counter to the `touch` and `mkdir` that are in charge of making new files and directories. Know that once you run the `rm` command, you can't take it back is important. There is no ctrl+z, there is no undo and there is no recovering files deleted with rm. Take the following files:
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
The first two commands are supposed to show relative and absolute paths and delete more than one file at a time. Deleting directories requires flags that have caused much harm to many new Linux users over the years. 

#### -r, -f and -rf WARNING
When you are removing individual files, you only have to make sure that you are removing the correct files. When you delete a directory, you should be careful not to delete anything important. Randomly copying `rm -rf` commands and pasting them into your terminal is a bad plan. Linux had to add countermeasures to the famous `rm -rf /` command that literally deletes your entire system. If you want to delete your entire system, there is a flag that you have to include: `--no-preserve-root`. The `-r` stands for recursive, which allows the `rm` command to delete files in directories and directories in directories. The `-f` flag is what force the system to actually run the command on all of the files and directories. The `-f` flag is to help make sure that you do not delete important files by accident. When these two flags are combined, you will delete all files and directories in the specified directory. Be very careful when using `rm -rf`, and make sure that it is doing what you want it to, because there is not really a good way to get it back.

### Exercise Removing
Start in `~/exercises/remove/`.  

a) You have decided to delete the directories `There` and `these`. The first thing you should do is get familiar with what you are deleting. You can use `cd` and `ls` until you are sure everything is actually good to delete, or you can just use the `tree` command.   
b) Remove `notImportant.txt`.    
c) Remove the `these`, as well as all the subdirectories and files.   
d) Save a backup of the `VALUABLEfile.txt`, then delete the `There` directory and all it's subdirectories and files.   

### Find in man page rm
You know that the `-r` and `-f` flags can be dangerous, especially when paired together. Since you already know what these flags do for the `rm` command, look at what the man page has to say about them. Connect how those flags are worded on paper to how dangerous they are in practice.


### clear 
By simply entering `clear` into the terminal, it clears the screen. A lot of people like to work with their terminal from the top and clear the screen a lot. Personally, I like having previously run commands and their results in the terminal so that I can go back and look through it. It is good to know however, because if you generate a lot of output to the screen and need to sort through small sections at a time, clear can often help make that more manageable.


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

If you just run the `cat` command by it's self, it takes user input and outputs that same input. Pressing the enter key is how the command knows where the output lines are. That may not seem very useful on it's own but it can be pretty powerful. It is important to remember that `ctrl+c` will stop the command. Here is an example:
```
$ cat
Totally valuable
Totally valuable
Eh, maybe
Eh, maybe
```
Highly recommend trying it out on your own.  

### redirection operator "<" ">" ">>"
These three are the most basic forms of redirection, and are still very useful despite their apparent simplicity. In practice, they are often used in conjunction with `.txt` files. Here is the formatting for them:
```
something < stdin
stdout > overwritten
stdout >> appended
```
Each of them kind of do exactly what the example might indicate. The `<` operator takes some form of input and feeds it into `something`. Often you will want to input a file into some other command such as:
```
$ cat > text.txt
```
Obviously a silly example, but replace `cat` with a more useful command, and you have input that in the form of a file.

The `>` operator overrides target with while the `>>` operator appends the target. In practice, this distinction does not always matter but it can. It is worth remembering the difference. Take the following:
```
ls > ls.output
ls >> ls.output
ls > ls.output
```
If you ran all three of these commands in sequence, `ls.output` would have one set of output at the end of the first execution, two at the second command, and just one at the end of the third.  

### Exercise cat and redirection 
Start in the `~/exercises/catRedirection` directory.

a) Check the contents of `testfile.txt`. I recommend using the `cat` command to see the contents of the file.  
b) Let's say you decided that you want to add text to the file. In preparation of making a mistake, make a copy of `testfile.txt`. As long as you copy the file to a backup, that is fine, but I recommend that you try and come up with two different ways to copy the file.  
c) Use the `cat` command and redirection to add text to `testfile.txt`, without deleting anything that is already there. When you are done, don't forget to use `ctrl+c`.  
d) Use `cat` and redirection to make `testfile.txt` match what ever the backup you made. The end result should be exactly how `testfile.txt` was originally.  

### Piping with "|"
One of the most powerful tools available to you on the Linux Command line is the `|` operator. What it does is it takes the output of one command and feeds it into the next. Here are some general example of what that looks like:
```
Command 1 | command 2 
Command 1 | command 2 | command 3 | command 4
```
In the firsts example, `Command 1`'s output is fed into `command 2`. This can be repeated as much as you want and the previous commands output will be fed into the next command.

As you become more used to the tools available to you on Linux, this "Piping" technique becomes more useful. One example that we will get into later is with grep. Going forward however, try and think about how two commands could relate to each other because the `|` operator often makes that possible.

### less  
Pretty much everything that applies to using man pages also applies to `less`. Man pages by default use the `less` interface so hopefully you are already familiar with actually using this tool. `less` takes text and outputs it to the screen. This text could come from anywhere, but the two most common are large files and commands that output a lot of information. 

### Text editors 
There are a plethora of of text editors that are useable in a terminal environment. If you take the time to learn these text editors, you may find that they are faster than their modern counter parts. The two main terminal based text editors are Vi and emacs, but there is also nano. 

#### limitations
Text editors in the terminal have some limitations that modern text editors like Microsoft Word, Google docs, VSCode and notepad don't have. The first and most off putting for most people is that most of these terminal based text editors were not designed with mice in mind. This can make copy and pasting directly tricky. This may sound like a really big limitation, but it really isn't as I will show in just a moment. The important part to remember is that for the small price of making direct copy and pasting a little bit harder, you get access to a lot of powerful functionality not often found in modern text editors. 

Here are the things that I think are required to know when you use a text editor:
how to add text
how to save
how to quit
how to copy
how to paste
how to search
how to find and replace

I Will go over how to do these 7 things in two of the more well known text editors that are usually included by default on linux in some form. 

#### Vi, Vim, Nvim
There is a huge meme about how people do not know how to exit vi based text editors. Both vi and vim have the same basic set of commands, so it isn't difficult to transition between them. A good place to start with vi is vim open a text file like so:
```
$ vim text.txt
```

When you open a file in vim, you start in normal mode. Despite what the name might have you believe, that does not mean that you can edit text. Normal mode is where you enter commands and make larger changes to the text. Normal mode is where all saving, quitting, searching, finding and replacing, yanking and printing happens. To start off however, the command to enter "insert mode" is "i". When you are in insert mode, every key does exactly what you would normally expect it to in this mode. Pressing the "a" key for example will add "a" to the text file and pressing "shift + a" will add an "A" to the text file. Copy and pasting is just like in the terminal while in this mode. To get back to normal mode you press the "esc" key.  
  
Once back in normal mode, pretty much all the other basic parts of a text editor are available. In normal mode, pretty much every key does something. The starting point for commands that you can do in normal mode is moving the courser. You can use the arrow keys like normal, but you can also use "hjkl" for directional movement as well. When you are starting, arrow keys are easy to remember so only use "hjkl" if you want to.  

Actually saving a document is a bit different than what you might expect as well. You do not use `ctrl+s` which you might remember as the "save button." Instead, you will be "Writing" your save. To input this kind of command, you input the keys `shift+;`, `w` then `enter`, or more commonly seen as `:w`. To actually quit out of any vi editor, you would use the command `:q`. Now if it seems like these are separate commands, that is correct. The neat part about simple commands like this however, is that it is very easy to combine them like `:wq`. I most often use these two commands together, but there are times when you don't make any changes and you only need to quit, or you may want to write changes and keep editing.  

Vi was not designed with copy and pasting in mind and as such, I will be primarily going over how vi handles copying and pasting differently. First, when you use vi it's not "copying", it's "Yanking". I make this distinction because it is completely different interface. Copy and pasting is for pretty much the whole system, in or out of a text editor. Yanking is completely separate, and you will lose what you have yanked if you quit out of vi. Important distinctions aside, to yank something will require the `y' key. Simply pressing the `y' key is not enough to do anything though. All pressing `y' does is tell vi that you want to "yank" something. The most basic form of yanking is to input `yy`, which will yank the line your courser is on. All you have to do then is press the `p` key where you want that line to "Print" and you have basic copy and pasting. For the sake of brevity, I will not be going over just how powerful this method of copy and pasting is, just know that it get very powerful with practice and an understanding of vi.  

To search for a specific string, you would enter the `:/` and then your string like so:
```
:/string
```
To go to the next instance of `string`, you would input `n` and `shift + n` to go backwards.  

To find and replace, it is a similar command with with a few extra bits:
```
:%s/pattern/replacement/g
:%s/pattern/replacement/gc
```
To get started with this, the `%s` means substitute over the whole file. The `/pattern/replacement/` is what you want to replace and with what. The `g` stands for global and the `c` stands for confirm.  

As you can see, vi has a very high skill floor to get meaningful value out of it. If you take the time to learn the tool, it is noticeably faster than other more modern text editors. Anyone who doesn't believe that should try to use and actually learn vi for a month. Vi may not be for everyone and it is hard to learn, but the rewards for doing so is a really fast text editor.

#### nano
There are only really two things that you have to know to use nano. First, every command is visible at the bottom of the screen. Second, the `^` symbol means `ctrl+`. Going through each of the basic features, you control your location using arrow key and otherwise enter text as normal. No insert mode, just arrow keys and letters. To save, you input `ctrl + o'. It will prompt you to name the file, but it should just use the name of the file so normally all that you will need to do is press enter. To quit nano, you would use `ctrl + x`.   
  
To find a string use `ctrl + w` or the "Where Is" function. To find the next occurrence use `alt + w` and `alt + q` for the previous. For the find and replace, you use the `ctrl + w` again and then you do `ctrl + R` or "Replace". You would then enter the text that you want replaced, hit enter and then the text that you want to replace it with. 

Copy and pasting works just like in the terminal, where you use `ctrl + shift + c` and `ctrl + shift + v` respectively.


### grep 
The `grep` command stands for "global regular expression print". In practice, `grep` is used on large bodies of text to find regular expressions and prints them out. This is probably one of the five most useful commands to know in linux. Take the following command:
```
$ grep VeryLargeTextFile.txt -e "regular expression"
```

The `-e` indicates that what is in the"  "is what you are looking for. There are many ways that this command can be expanded. Here are some of the ones that I find more useful:
```
$ grep VeryLargeTextFile.txt -e "regular expression" -e "Second expression"
$
$ grep VeryLargeTextFile.txt LargeTextFile.txt -e "regular expression"
$
$ grep VeryLargeTextFile.txt -e "regular expression" -A 1 -B 1
$
$ grep VeryLargeTextFile.txt -e "regular expression" -v
```

The first one makes it so that `grep` is looking for two expressions. The second one has `grep` search two files. These two can be combined together such that you can look for multiple regular expressions across multiple files.  

The flags `-A` and `-B` stand for "After" and "Before", and print extra lines before and after the line with the regular expression. Use either or both to get some of the context around what you are looking for.

The `-v` flag stands for "inVert output", which basically means show everything except the regular expression. If you are a security person, you could use this to check if there are more users than authorized with accounts. Running grep with each allowed name against the available users with the inverted flag will show users that should not exist. Could be helpful if you have a list of authorized users and a list of current users.


### wildcards 
For commands like `ls`, often you will want to limit the output to a general category. A relatively common one for me is only showing text files when using `ls`. Another thing I might want to do is only list `.cpp` and `.hpp` files. In order to make this possible, Linux has a wildcard system for files. The two main wildcards are the `*` and `?`. The `*` means that there could be more than one of any character in this position and the `?` is a single character. So in the earlier examples of when I use wildcards, it looks something like this:
```
$ ls *.txt
$ ls *.?pp
```
The first one will only list files that end with `.txt` because the `*` wildcard doesn't care about length. The second will list any file that ends in `.?pp`, which will most likely only be `.hpp` and `.cpp` files but as long as has a dot something pp, it will get output.

## Intermediate


### uname

The `uname` command is used to find information about the system's operating system and architecture. Most often just include the `-a' flag. The `-a' flag is for displaying all the information `uname` provides. When that is too inconvenient to parse, I usually view the man page to find one particular flag.

Some of the more frequent flags that would be needed are the following:
```
-n
-v
-p
```
`-n` will display your hostname. For default bash, your hostname can be found as part of the command prompt but that is not always the case. Different terminal configurations will sometimes not include your hostname as part of the command line. 

The `-v` flag will show the kernel version. Since all Linux based systems are forked from the Linux Kernel, this will usually be a good way to figure out what specific distribution you are working on. There are other ways that will be covered later that are better, but this is a fairly easy one to keep track of.

When the `-p` flag is used, uname will show the architecture of the processor. At the time of writing, this will likely be some form of x86_64.


### Find in man page uname
Find and read all three of `-n -v -p` flags in the man page. Compare those entries to `uname --help` command. Which do you like better? 

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

### Find in man page whoami
Not all man pages are hard to understand. Some commands are less complicated than others. The `whoami` command is pretty simple, so check out the man page to see that not all man pages are hard to understand. How many different options are there? 


### /etc  
The `/etc` directory is where most system configurations are. You already know the the sudoers file is in `/etc`, but you will find a lot of other useful files in here. Some what you will find here are the following:
```
hostname
passwd
sudoers
```
The `hostname` file simply contains the hostname of the computer. You probably wont ever need to get the hostname from here, but you can. If you want to change the hostname, this is one of the files that you should expect to change.

Despite what the file `passwd` might indicate with it's name, it does not contain any passwords in the file. If you forget a password to an account you create, you wont find it here. You will however find all the users that are on the computer. Most of these users you will never log into and are used for system management.  

### sudoers  
Another way to get temporary elevated privileges that does not require switching accounts is to start the command with `sudo` or "Super User DO". It is worth noting that `sudo`, while useful is not on all Unix based systems. It is possible that in the future `sudo` will be replaced with `doas`. For now, I will only be going over sudo because of how prolific it is. It is worth noting that the main reason `sudo` would get replaced is because it is bulky and configuring sudo is not something standard users care about. 

### Exercise add user to the sudoers file
This exercise is going to be a bit different than the others. There is nothing in the `~/exercises` directory for this exercise. I will be telling you exactly what to do for this one, so try to internalize this process. 

a) run the command `su - root`, the password is "toor", which is just root backwards.  
b) now that you have elevated privileges, go to the `/etc/` directory.  
c) use your preferred text editor to edit the `sudoers` file. The two obvious examples are:
```
$ nano sudoers
$ vim sudoers
``` 
d) I recommend for this exercise that you look for the `root ALL=(ALL:ALL) ALL` line and add `user ALL=(ALL:ALL) ALL`. The end result would look something like this:
```
root ALL=(ALL:ALL) ALL
user ALL=(ALL:ALL) ALL
```
If you can't find the right line, just add `user ALL=(ALL:ALL) ALL` to the line just above the `@includedir /etc/sudoers.d` line at the bottom of the page.  

Do make sure that you properly saved the file before exiting.


### /proc
The `/proc` directory is primarily for processes, but there is some pretty useful information that is worth looking at. Take the following:

```
cpuinfo
meminfo
```

Both of these files contain some very useful stats related to the cpu and ram respectively. I highly recommend looking at them, especially since the information that is good to know is at the top of both. For `cpuinfo`, towards the top there is a "model name" line. It should be pretty easy to get the rest of of the useful information you would need with just that, but just about every spec you would want is in `cpuinfo`. The top line of `meminfo` is "MemTotal" in kB. If you want to know how much ram you have, you can just go here.

### Exercise grep
Start in the `/proc/` directory.

a) Use grep to list the lines with "model" in cpuinfo.  
b) Use grep to list the lines with "id" in cpuinfo.  
c) Use grep to list the lines with "cpu" in cpuinfo.  
d) Use grep to list the lines with "id" in cpuinfo.  
e) Do a-d again but this time print one line above and below.
f) Do a-d again but this time only print lines without the given word.  

### warnings about chmod 777
With great power comes great responsibility. When you are given the power to make any change to the system and the system will let you, it can be easy to expose your computer to danger. Some of the more important commands to look out for are CHange OWNer and CHange MODe (`chmod`). If something online says to `chmod` a file or directory, be very carful, especially with 777. When you run `ls -l` you get output like this:  
drwxrw-r-x  
This shows what users and groups have access to certain files and directories. If you don't know how to count in binary, the explanation of what the 777. Know that it gives every user access to the file or directory the `chmod` command is run on and it poses a significant security risk.

This is how the 777 relates to the permissions:
```
 |7  |7  |7  |
-|rwx|rwx|rwx|
```

In the same way that three bits has eight combinations of numbers, there are eight ways to configure permissions. A "000" would be no one is allowed to do anything with this file/directory. Adding one would allow for "execute", adding two allows for "write" and adding four adds "read" permissions. When you want to have more than one of those three privileges just add the ones you want together.

### Exercise 777 meaning
Starting with `0 = ---` being correct, show on a piece of scratch paper or another device that you can make all 8 combinations of permissions with the following key:   
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
Linux is often used for its networking tools. I will briefly go over two of the most important tools for networking on linux: ping and ip.

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

### Find in man page ip
For this exercise, you don't have to read anything outside of the synopsis. Run the command: `man ip`. I will not go over any of the OPTIONS, so focus on looking at the objects. This is where you will find "address". It doesn't say it in they synopsis, but the "show" from earlier goes in the place of COMMAND. Notice how "help" is also in that same set of {} 's. If you want help with specifically `ip address`, you can run `ip address help`. This changes the default behavior of `show` to `help`.


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

### Exercise using apt
This exercise will require elevated privileges and can be done anywhere. I recommend that before you start installing random packages, you look up what they are and what they do. Here are the packages that I want you to install:
```
cmatrix
sl
neofetch
fortune
cowsay
```
a) Install all four of these packages using `apt install`.   
b) Uninstall the `cmatrix` package. If you decided that you do want it, you can always reinstall it later.

## Freeform
At this point, I hope you guys have gotten the idea. Linux has a lot of it's power in the terminal. In this "Freeform" section, I will try to convey how the useful skills can be used in all sorts of interesting ways. Then, if you can set up the GUI, perhaps you will remember the powerful tools available in the terminal. Maybe use the GUI as a tool to make most a lot of tasks easier, but also use the terminal to it's strength.


### cowsay and fortune
Hopefully you can kind of read man pages at this point. Provided you managed to install cowsay and fortune, run the commands:
```
$ cowsay "I love man pages"
$ cowsay -l
```
You are not required to look at what that means in the man page, but I believe that it would be a good test of understanding. Good luck to those that want to take up the challenge.  

If you have run the `fortune` command, you may have noticed that it prints fortune cookie type nothings, famous quotes and generally encouraging statements. You may have also noticed that `cowsay` takes text as input. Combine these two commands. If you did the challenge earlier, add that to the combinations as well.

An extra challenge for `fortune` is to make it only print riddles. Then you can also combine it with `cowsay` as well if you want.
