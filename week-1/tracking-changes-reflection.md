##How does tracking and adding changes make developers' lives easier?
  Tracking and adding changes allows developers to work concurrently with
  others on the same projects, each modifying the original work without
  overwriting each other or losing track of what changes were made.
  
##What is a commit?
  A commit is a change made to a branch of a repository. They include a message
  to explain what changes were made to the previous version.
  
##What are the best practices for commit messages?
  Commit messages are written in the imperative present tense (ex. "update",
  rather than "updates" or "updated") in order to keep verbiage the same between
  commands typed and messages written.
  
##What does the HEAD^ argument mean?
  HEAD^ refers to the most recent commit, or change, made to a branch.
  
##What are the 3 stages of a git change and how do you move a file from one
##stage to the other?
  1: Make a Change
  2: Add Changes to the Commit
    Once changes have been made to your files, use [git add file-name]
    to add them to your list of files to be commited.
  3: Commit Changes
    When you are ready to commit all changes made, use [git commit] to
    commit the changes. Git will ask for a commit message and update your
    working directory with all submited changes.

##Write a handy cheatsheet of the commands you need to commit your changes?
  git co -b <branch-name> : create a new branch
  git co <branch-name> : change working branch in git
  git add <file-name> : adds a file to the commit
  git add <directory-name> : adds a directory to the commit
  git status : shows the current status of the commit
  git commit : commits changes (will ask for message)
  git commit -m "message" : commits changes with a short message
  
##What is a pull request and how do you create and merge one?
  A pull request is a request to merge a branch with either the master or with
  another branch. This is done after changes have been committed and pushed to
  the remote repository. Steps are as follows:
  
  1: Pull and Merge Previous Changes
    git co master
    git pull origin master
  
  2: Push Branch to GitHub
    git push origin <branch-name>
  
  3: Create Pull Request
    Go to your repository page in GitHub
    Click "Compare & Pull Request"
    Ensure "Base" and "Compare" fields are correct, add title and description
    Click "Create Pull Request"
    
  4: Merge Changes
    Click "Merge Pull Request"
    Confirm the Merge
    
  5: Clean Up
    Delete branch on GitHub
    git pull origin master
    git branch -d <branch-name>
    
##Why are pull requests preferred when working with teams?
  Pull requests are important when working with teams because it allows for
  another person to double check the changes before they are merged into the
  master.