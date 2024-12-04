# Test Plan
## Scope
There are three sections to this guide, the "Starting Point", the "Practical Tools", and the "Freeform." Each of these sections needs to have been tested by users of various skill levels to see if the ideas being presented are clear enough and complete. Every tool and question is cumulative and so testing individual questions is difficult to justify. As such, the order in which the tools are presented and explained is as valuable to testing as the content. I consider the following tools to be fitting for each section:
```
Starting point
|-- History of Linux
|-- File Structure
|-- Autocomplete
|-- Reading the Terminal
|-- Man Pages
|-- pwd
|-- ls
|-- cd
|-- touch
|-- mkdir
|-- mv
|-- tree
|-- cp
|-- rm
|-- clear
|-- cat
|-- redirection
|-- piping
|-- less
`-- text editors
Practical Tools and Files
|-- grep
|-- wildcards
|-- uname
|-- su
|-- whoami
|-- /etc
|-- /proc
|-- sudoers
|-- Warning about chmod 777
|-- ping
|-- ip
`-- apt
Freeform
|-- cowsay
|-- fortune
|-- combining both
`-- demonstrate learning of most of the tools
```
If a user can get all the way to the end, they should be able to identify which tools to use to combine `cowsay` and `fortune` then it's a passable. Figuring out how to get `cowsay` to print different animals or famous characters or getting `fortune` to only print a specific type of fortune is a success. Being able to get the extra challenge of combining both depending on prior experience with the command line would be amazing. Each tool will only be explained only to the point that a progress the theme of the guide, which is defined in the proposal. This means that many useful aspects for commands such as `cd -` which means to go to the previous directory are going to be excluded. Complicated commands like `ip` will only get surface level explanations because while it is important, it should be left to a networking class. The third main criteria is if I can come up with a really good explanation to a difficult to remember problem. `chmod 777` falls under this category. Out of scope is everything outside the terminal. Nothing in this guide can require using a mouse.

## Schedule
9/11 - Starting Point  
9/25 - Practical tools  
10/10 - Freeform  
10/16 - Proposal and Deployment  
10/30 - First round of editing and skilled Linux user review  
11/20 - Second round of editing, testing complete data collected  
11/27 - Processed data and presentation complete  

## Test Objectives
It is important to know that this is not a comprehensive guide for each tool. This incomplete explanation of each tool partly to encourage creativity and mostly because there is simply to much to cover for each tool. With that in mind, the objective is to have each tool either be shown to be useful or have questions that highlight each tools use. The primary goal of the guide is to complete the freeform section with little difficulty. Completing the freeform section will show that you know how to parse which tool you need to complete a specific task. The most important sections that need to stand out are the differences between `tree` and `ls`, the dangers of `rm -rf`, and how to know what `chown XXX` means. If you can see the different use cases for `tree` and `ls` then explaining that two similar tools can be more useful in different use cases. The `rm -rf` command highlights that Linux trusts that you know what the commands you run do. If you randomly run commands that damage your computer, sometimes those changes are permanent, and can brick your computer. `chown XXX` meaning is there because it is often just used and not explained, so I wanted to make sure people who do the guide can see what is going on with 777. 

## Deliverables
### Before Test
Before the test, the cheat sheet should be complete and confirmed to work as intended. Each question in the guide should have a section on the cheat sheet that will indicate to the user that they got the question right. The debian box should be set up as described in the README.md. 

### During Test
Since this project is designed to build confidence in Linux usage, there should be a noticeable confidence boost in CLI tools. Confidence is difficult to measure so try to let users be independent. The goal is to let each user figure out how to do each of the tasks on their own, only clearing up misunderstandings as needed. If questions are asked outside the scope of the guide, those are always worth answering because it is a reward to curiosity. Generally it is only good to answer questions if there is a misunderstanding or if is completely extra.  

### After Test
There should be a form that gets tester feedback in an easy to understand format. This document should include the following:
```
Overall experience  
Confidence in Linux CLI before
Confidence in Linux CLI after
Best section
Sections that can use improvements
Any bad sections
Do you consider the information useful
```

### Issues in Practice
The two biggest issues I had in practice were the editing and the lack of clarity with the cheat sheet. Most of the feed back, especially with somewhat experienced Linux users, was editorial stuff. Either the point was badly worded or straight up typos early on. The organization had a couple of problems. Early iterations of the project had how to read the terminal after cd/ls/pwd, which confused some of the less CLI inclined testers. It is apparently important to explain what the `$` and `#` mean before you have them use commands. The only other major content issue encountered during testing was an issue where someone interpreted `.` as `/home/user` which is not correct. I also forgot to draw attention to the cheat sheet for some of the testers so some of the testers feedback is a lack of clarity in instructions.

## Strategy
There is unfortunately no real way to test how well a guided walkthrough is at teaching material without hands on testing. The general strategy is to first hand off the guide to some experienced Linux users who can help catch holes in the guide and suggest solutions. After a round of editing and making sure that the guide is complete with its theme, hand it off to the newer testers and see how far they can get. 

### Logistics
Generally, testing should follow the schedule listed above. The testing environment will be in the compute lab AH 203 on a virtual machine. Testers will pick a day and time that they want to test the guide. The VM will already be set up and ready to go for however long they want to test. I requested an hour from each tester with the understanding that not everyone would want or have time to test the whole guide. After the testers finish the test, they were asked to fill out a two minute form asking about the experience on their own time.  

### What concludes testing?
Testing a guided walkthrough is never over until it is done being used, as there are always improvements that can be made, questions to add, or more tools to cover. The line has to be drawn somewhere though so I drew the line with two criteria. There needs to be around ten hours of testing in the second group and testers need to leave with a better understanding of the CLI. I do not expect there to be much interest in Linux CLI so I want enough different levels of experience to go through as far as they could. 

### Results
Testers were divided into two groups, already confident with Linux CLI and relatively new with CLI. The experienced group tested the questions to make sure that the answers were intuitive for beginners. This was a concern early on because there are many ways in which a question can be made to be to hard when you are trying to teach the fundamentals of CLI. This group gave a collective 2 hours of testing towards the project and generally gave positive feedback on the content of the questions. These testers often came back and indicated that they had also learned stuff from going through the questions as "beta-testers." The question that they pointed to the most often was the `chown XXX` problem for being insightful. After the first round of editing, it was then handed off to the second group which, outside of the previously mentioned issues, went well. This group was asked to go through the guide with a preset VM. It is a testament to the design of the guide that none of them had to use the cheat sheet to get through any of the sections. At most, they asked for clarification on certain commands. The `tree` command was just as popular among this group as I had hoped, and pretty much all the testers used both `tree` and `ls` throughout the guide. I ended up getting around fifteen hours of tests run on the guide from both groups across 6 people. Not a single person that agreed to test gave less than an hour and a half, which surprised me. I did expect a couple people to either have bad experiences or have bad experiences. The first round of tests seemed to have done their job because everyone in the second group had a good experience and seemed to indicate symptoms of learning. 



