# Steps on how to duplicate this starter repo:

0. Obtain [private repos](https://help.github.com/articles/applying-for-a-student-developer-pack/) for free 
1. Go to Github and create a private repo:
   - Don't do anything fancy yet (i.e. don't initialize the repo with a readme, don't add a .gitignore, etc)
   - Just give it a name, make sure to choose "private," and then click "create repository"
2. Clone this repo with `git clone https://github.com/justintemp/Pintos_Starter.git`
3. Cd into the folder you just cloned
4. Change the .git folder with `rm -rf .git`
5. Create a blank .git folder with `git init`
5. Change the remote repo to point to your own git repo. First go to your repo and find the `git remote add origin` command. Copy that line and then run it
6. Add all the code with `git add .`
7. Commit the code `git commit -m "initial commit"`
8. Push the code to your remote repo

# Steps on how to install pintos

0. Make sure that the dependencies have been installed:
   - `sudo apt-get install qemu`
   - `sudo apt-get install realpath`
1. Run this command: `source install.sh`
2. If that doesn't work, read the error messages.
