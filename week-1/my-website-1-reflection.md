https://github.com/cyvattes/cyvattes.github.io.git

To create a repository on GitHub, first navigate to your home screen
(github.com). On the right side of the screen, there will be a green
button labeled “+ New Repository”; click it. Enter a name for your repository,
select whether it should be public or private for you, and click the create
button at the bottom.

To clone a repository, navigate to your home screen as before.
On the right side, underneath the “New Repository” button will be a list of
your repositories. Click the name of whichever one you want to clone.
In the upper part of the screen, near the middle, will be a section
marked HTTPS, followed by a web url. Right-click and copy the url.
From the command line (terminal or console), type the following:

git clone <paste the url here>

and press enter. This will clone the repository onto your computer.


Open Source is a term that refers to source code which is available to be
freely used, changed, and distributed by anyone who wishes to. I like open
source software, as I feel that it allows for more free and open communication
and collaboration by people. Licences are used to ensure that code can be
collaborative and shared without stepping on toes due to copyright.
For instance, the MIT license essentially says you can do whatever
modifications or distributions to the licensed source code, so long as the
copyright statement is included with the modified code.

The challenge helped solidify for me the concept of working directories versus
branches. At first, I made the mistake of staying in my master branch to
create and push the commit. It wasn’t until I was trying to make a pull
request that I noticed my mistake. I created a new branch, pushed and merged
it, and pulled it back into git, which seems to be working fine now.
One oddity I noticed, however, is that [git status] is telling me that my
master branch is ahead of origin by 2 commits. I am still researching what
caused this and how to fix it. [update: problem is fixed]

In reference to the above issue, I searched through forum Q/As on git and
stack overflow. Eventually, I found the reason for the issue
(although I’m still not sure I understand it), and was able to do a
quick and easy fix.