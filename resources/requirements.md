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
### History of Linux
### File Structure
### Autocomplete
### Reading the Terminal
### Man Pages
### pwd
### ls
### cd
### touch
### mkdir
### mv
### tree
### cp
### rm
### clear
### cat
### redirection
### piping
### less
### text editors

## Practical Tools and Files
### grep
### wildcards
### uname
### su
### whoami
### /etc
### /proc
### sudoers
### Warning about chmod 777
### ping
### ip
### apt


## Freeform
### cowsay
### fortune
### combining both
### demonstrate learning of most of the tools
