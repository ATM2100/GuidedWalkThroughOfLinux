### Exercise cd/ls/pwd  
Once logged onto the Debian VM,   
a) print your working directory  
b) list all the contents of the directory  
c) then change your directory to the `exercises`   
d) list the contents of the directory  
e) print your working directory.  
From this point on, All exercises will start in this directory.
```
$ pwd
$
$ ls
$ ls -a
$
$ cd exercises
$
$ ls
$
$ pwd
```

### Find in Man Page ls
What does the man page say that the `-a' flag does for the command `ls`? What about the `-l` flag?

```
-a, --all
              do not ignore entries starting with .

-l     use a long listing format

```

### Exercise autocomplete
Change your Directory to the `autoComplete/` directory.

a) Change your directory to: `The/most/Annoying/directory/That/EVER/Existed/Possibly/ever/But/I/Guess/There/Could` 
I highly recommend using auto complete and not typing all that out.

```
$ cd The/most/Annoying/directory/That/EVER/Existed/Possibly/ever/But/I/Guess/There/Could
```

### Exercise creation
Start in the `~/exercises/creation/`. This directory should be empty.

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

```
$ touch temp.out test.txt main.cpp customBashScript.sh RandomFileName
$ mkdir Empty 
$ mkdir temporary
$ mkdir -p A/Simple/Directory
$ mv temp.out temporary/
$ mv RandomFile A/Simple/Directory/RandomFile
$ mv customBashScript.sh bashScript.sh
```

### Find in Man Page tree and ls
a) If `tree -h` displays the size of a file or directory in a human-readable fashion, how would you display it in a human-readable fashion? (You're looking to print an exact size in bytes)  
b) The `ls -l` command lists the file size. Another way to show the size of files would be using the `ls -s' command. As you can imagine, the `-s' stands for size. Since `tree` has a flag to make file sizes human readable, it stands to reason that ls does as well. What is this flag? What other flags would be needed to use this human-readable flag?
```
a) 
-s     Print the size of each file in bytes along with the name.
example:
$ tree -s

b)
-h, --human-readable
              with -l and -s, print sizes like 1K 234M 2G etc.
$ ls -lh
$ ls -sh
```
### Exercise Removing
Start in `~/exercises/remove/`.  

a) You have decided to delete the directories `There` and `these`. First, you should get familiar with what you are deleting. You can use `cd` and `ls` until you are sure everything is actually good to delete, or you can just use the `tree` command.   
b) Remove `notImportant.txt`.    
c) Remove the `these` and all the subdirectories and files.   
d) Save a backup of the `VALUABLEfile.txt`, then delete the `There` directory and all its subdirectories and files.   

```
$ tree
$
$ rm notImportant.txt
$
$ rm -rf these/
$
(There are multiple ways you can save the VALUABLEfile.txt, here are two)
$ mv There/Is/Something/Valuable/Here/VALUABLEfile.txt VALUABLEfile.txt
$ cp There/Is/Something/Valuable/Here/VALUABLEfile.txt .
```

### Find in man page rm
You know the `-r` and `-f` flags can be dangerous, especially when paired. Since you already know what these flags do for the `rm` command, look at what the man page says about them. Connect how those flags are worded on paper to how dangerous they are in practice.
```
    -f, --force
        ignore nonexistent files and arguments, never prompt
    -r, -R, --recursive
        remove directories and their contents recursively
```


### Exercise cat and redirection 
Start in the `~/exercises/catRedirection` directory.

a) Check the contents of `testfile.txt`. I recommend using the `cat` command to view the file's contents.  
b) Let's say you decided to add text to the file. In preparation for making a mistake, make a copy of `testfile.txt`. As long as you copy the file to a backup, that is fine, but I recommend that you try to come up with two different ways to copy the file.  
c) Use the `cat` command and redirection to add text to `testfile.txt`, without deleting anything that is already there. When you are done, don't forget to use `ctrl+c`.  
d) Use `cat` and redirection to make `testfile.txt` match whatever backup you made. The end result should be exactly how `testfile.txt` was originally.   

```
$ cat testfile.txt
There is text in this file
This is to demonstrate the functionality of cat
That is all. This specific text is not needed
$
(There are three here, you only need one but if you come up with more, that's just a bonus)
$ cp testfile.txt testfile-backup.txt
$ cat testfile.txt > testfileBackupt.txt
$ cat testfile.txt >> testfile.txt_backup
$
$ cat >> testfile.txt
what ever you add here is fine, the ">>" is what is important here.
$
$ cat testfile-backup.txt > testfile.txt
```

### Find in man page uname
Find and read all three of the `-n -v -p` flags on the man page. Compare those entries to `uname --help` command. Which do you like better? 


### Find in man page whoami
Not all man pages are hard to understand. Some commands are less complicated than others. The `whoami` command is pretty simple, so check out the man page to see that not all man pages are hard to understand. How many different options are there?

```
There are two options available:
    --help display this help and exit

    --version
        output version information and exit

```


### Exercise add a user to the sudoers file
This exercise is going to be a bit different than the others. Nothing is in the `~/exercises` directory for this exercise. I will tell you exactly what to do, so try to internalize this process. 

a) Run the command `su - root`.  
b) now that you have elevated privileges go to the `/etc/` directory.  
c) Edit the `sudoers` file using your preferred text editor. The two obvious examples are:
```
$ nano sudoers
$ vim sudoers
``` 
d) I recommend that you look for the `root ALL=(ALL:ALL) ALL` line for this exercise and add `user ALL=(ALL:ALL) ALL`. The end result would look something like this:
```
root ALL=(ALL:ALL) ALL
user ALL=(ALL:ALL) ALL
```
If you can't find the right line, just add `user ALL=(ALL:ALL) ALL` to the line just above the `@includedir /etc/sudoers.d` line at the bottom of the page.  

Make sure that you properly saved the file before exiting.
```
$ su - root
Password: toor
$
$ cd /etc/
$
$ vim sudoers
```
### Exercise grep
Start in the `/proc/` directory.

a) Use grep to list the lines with "model" in cpuinfo.  
b) Use grep to list the lines with "id" in cpuinfo.  
c) Use grep to list the lines with "cpu" in cpuinfo.  
d) Do a-c again, but print one line above and below this time.
e) Do a-c again, but only print lines without the given word this time.   

```
$ grep cpuinfo -e "model"
$
$ grep cpuinfo -e "id"
$
$ grep cpuinfo -e "cpu"
$
$ grep cpuinfo -e "model" -A 1 -B 1
$ grep cpuinfo -e "id" -A 1 -B 1
$ grep cpuinfo -e "cpu" -A 1 -B 1
$
$ grep cpuinfo -e "model" -v
$ grep cpuinfo -e "id" -v
$ grep cpuinfo -e "cpu" -v
```


### Exercise 777 meaning
Starting with `0 = ---` being correct, show on a piece of scratch paper or another device that you can make all eight combinations of permissions with the following key:   
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

```
0 = ---
1 = --x
2 = -w-
3 = -wx
4 = r--
5 = r-x
6 = rw-
7 = rwx
```

### Find in man page ip
You don't have to read anything outside of the synopsis for this exercise. Run the command: `man ip`. I will not review any of the OPTIONS, so focus on the objects. This is where you will find "address." The synopsis does not say, but the "show" from earlier goes in the place of COMMAND. Notice how "help" is also in that same set of {} 's. If you want help with specifically `ip address`, you can run `ip address help`. This changes the default behavior of `show` to `help`.
```
SYNOPSIS
       ip [ OPTIONS ] OBJECT { COMMAND | help }

       ip [ -force ] -batch filename

       OBJECT := { link | address | addrlabel | route | rule | neigh | ntable | tunnel | tuntap | maddress | mroute | mrule | monitor | xfrm | netns | l2tp | tcp_metrics | token | macsec | vrf | mptcp | ioam }

       OPTIONS := { -V[ersion] | -h[uman-readable] | -s[tatistics] | -d[etails] | -r[esolve] | -iec | -f[amily] { inet | inet6 | link } | -4 | -6 | -B | -0 | -l[oops] { maximum-addr-flush-at‐tempts } | -o[neline] | -rc[vbuf] [size] | -t[imestamp] | -ts[hort] | -n[etns] name | -N[umeric] | -a[ll] | -c[olor] | -br[ief] | -j[son] | -p[retty] }

```

```
$ ip address help
```


### Exercise using apt
This exercise will require elevated privileges and can be done anywhere. Before you start installing random packages, I recommend you look up what they are and what they do. Here are the packages that I want you to install:
```
cmatrix
sl
neofetch
```
a) Install all of these packages using `apt install`.   
b) Uninstall the `cmatrix` package. If you decide you want it, you can reinstall it later.

```
$ sudo apt install cmatrix
$ sudo apt install sl
$ sudo apt install neofetch
$
$ sudo apt remove cmatrix
```


### cowsay and fortune

```
$ sudo apt install fortune
$ sudo apt install cowsay
$
$ fortune | cowsay
$
$ fortune | cowsay -f dragon
$
$ fortune /usr/share/games/fortunes/riddles | cowsay
$
$ fortune /usr/share/games/fortunes/riddles | cowsay -f vader
```