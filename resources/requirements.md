# Requirements Document
## Look and Feel
The Guided Walkthrough of Linux will be modeled after NETLabs walkthrough and combined with my experience with online guides. This limits what the look and feel of both the guide and the Linux box can be. The goal would be to have the guide be a mix of guide and walkthrough which lends itself well to mark down. This will also help with centralization because then users can just use github to view the guide. The Linux box should feel like you are using the terminal, so there should not really be any interface other than the CLI.

###  Appearance and Style
The appearance and style is set because of how the guide is best to be a markdown file and the users should only be using the terminal. As long as users have a way to view markdown and have a way to interface with a Linux terminal there is not set appearance or style. 

## Usability
There are two aspects of this project that need to be considered, the ease of which the guide can be deployed and the how effective it is at communicating ideas. 

###  Ease of Deployment
The deployment of this project is fairly simple. All you need to do is set up a Debian box that is just the terminal and access to the guide and cheat sheet. You technically do not even need Debian just a Linux distribution that is just the terminal if you make some adjustments to the package manager section. You can deploy the presumed Debian box on bare metal or a vm, print the guide and cheat sheet or access them electronically. There is a lot of flexibility in how this guide is used other than the suggested method.

###  Learning
The users should not have to get extra information outside the guide. Obviously the goal is to facilitate learning so explain tricky sections or if the user misunderstands something correct them. For the most part, the guide and cheat sheet should be enough to get through the whole guide.

###  Accessibility
It is assumed that there are at least two people when using this guide. One should already know enough to deploy a debian box and prep the box to the specifications. Then the one or more other people should use the prepped box to follow the guide. This is not a comprehensive guide to every aspect of Linux and it's use. You should not be able to set up everything and learn to much from the guide.

## Maintainability and Access
Maintenance to the main repository is to be handled directly by me. The project will be publicly available so I do encourage people to take the different questions and explanations as inspiration for their own guides and or courses. If you wish to be a maintainer and support the project, anybody can make a pull request.

# Functional Requirements
## Starting point
### File Structure
By the end of this section, the user should be able to look at a file path and know which parts of the file path is what.
### Autocomplete
By the end of this section, the user should be able to use auto complete.
### Reading the Terminal
By the end of this section, the user should be able to understand which part of the terminal's command prompt does what.
### Man Pages
By the end of this section, the user should be able to view a man page, scroll up and down as well as exit out of the man page.
### pwd
By the end of this section, the user should be able to print the working directory and understand what that means.
### ls
By the end of this section, the user should be able to use ls and understand the different important flags that ls has.
### cd
By the end of this section, the user should be able to always be able to get to the home directory as well as change directories to anywhere on the system they know about.
### touch
By the end of this section, the user should be able to create empty files.
### mkdir
By the end of this section, the user should be able to make directories and understand what `-p` means.
### mv
By the end of this section, the user should be able to move files on the file system and rename files.
### tree
By the end of this section, the user should be able to understand the difference between tree and ls. 
### cp
By the end of this section, the user should be able to copy files and understand the similarities to `mv`.
### rm
By the end of this section, the user should be able to understand that `rm` is permanent as well as the danger of `-rf`.
### clear
By the end of this section, the user should be able to clear the screen.
### cat and redirection
By the end of this section, the user should be able to view the contents of files as well as redirect text into files.
### piping
By the end of this section, the user should be able to understand how to pipe one command into another
### less
By the end of this section, the user should be able to see the similarities to man pages.
### text editors
The testers at the end of this section should be able to say which text editor between vim and nano they prefer. 

## Practical Tools and Files
### grep
By the end of this section, the user should be able to find regular expressions.
### wildcards
By the end of this section, the user should be able to understand what basic wild cards are and what they do.
### uname
By the end of this section, the user should be able to find important information such as host name and processor architecture. 
### su
By the end of this section, the user should be able to switch user.
### whoami
By the end of this section, the user should be able to identify what user they are.
### /etc
By the end of this section, the user should be able to find important configuration files.
### /proc
By the end of this section, the user should be able to find important information regarding the cpu and memory.
### sudoers
By the end of this section, the user should be able to add a user to sudoers.
### Warning about chmod 777
By the end of this section, the user should be able to know what 754 means in the context of chown.
### ping
By the end of this section, the user should be able to ping ip addresses.
### ip
By the end of this section, the user should be able to read the synopsis of it's man page, and understand that it is important for networking.
### apt
By the end of this section, the user should be able to install and remove packages.


## Freeform
### cowsay fortune
By the end of this section, the user should be able to combine two unfamiliar commands.
### demonstrate learning of most of the tools
By the end of this section, the user should be able to read man pages to find vague pieces of information.