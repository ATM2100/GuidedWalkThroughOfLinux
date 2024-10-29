### Exercise 1.1
Once logged onto the Debian vm,   
a) print your working directory  
b) list all the contents of the directory  
c) then change your directory to the `basicDirectory`   
d) list the contents of the directory  
e) print your working directory.
```
a) 
$ pwd

b)
$ ls
$ ls -a
$ ls -al 
(ls -a is preferred since the question said all files)

c)
$ cd basicDirectory

d)
$ ls

e)
$ pwd
```

### Find in Man Page 1
What does the man page say that the `-a` flag does for the command `ls`? What about the `-l` flag?

```
-a, --all
              do not ignore entries starting with .

-l     use a long listing format

```
### Find in Man Page 2 (tree)
a) If `tree -h` displays the size of a file or directory in a human readable fashion, how would you display it in a human unreadable fashion? (Your looking to print an exact size in bytes)
b) The `ls -l` command also lists the size of the file. Another way to show the size of files would be using the `ls -s` command. As you can imagine, the `-s` stands for size. Since tree has a flag to make file sizes human readable, it stands to reason that ls does as well. What is this flag? What other flags would be needed to make use of this human readable flag?
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