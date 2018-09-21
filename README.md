# How to make a copy of this starter repo:

0. Obtain [private repos](https://help.github.com/articles/applying-for-a-student-developer-pack/) for free 
1. Go to Github and create a private repo:
   - Don't do anything fancy yet (i.e. don't initialize the repo with a readme, don't add a .gitignore, etc)
   - Just give it a name, make sure to choose "private," and then click "create repository"
2. Clone this repo with `git clone https://github.com/justintemp/Pintos_Starter.git`
3. Cd into the folder you just cloned `cd Pintos_Starter`
4. Change the .git folder with `rm -rf .git`
5. Create a blank .git folder with `git init`
5. Change the remote repo to point to your own git repo. First go to your repo and find the `git remote add origin` command. Copy that line and then run it
6. Add all the code with `git add .`
7. Commit the code `git commit -m "initial commit"`
8. Push the code to your remote repo and set the upstream `git push --set-upstream origin master`

# How to install pintos

0. Make sure that the dependencies have been installed:
   - `sudo apt-get install qemu`
   - `sudo apt-get install realpath`
1. Run this command: `source install.sh`
2. If that doesn't work, read the error messages.

# How to run all of the pintos tests

0. Go into the directory for the current project (for the first pintos project, this will be the userprog directory): `cd userprog`
1. Build the directory with `make`
2. Run `make check`:
   - You'll see a lot of stuff being output, but if you're patient for about 10-30 minutes, you'll get a summary of your results at the end.

# How to run a single pintos test

With the help of Dr. Google, I was able to write a convenient script for you all.

0. Open up the `run_pintos_tests.sh` file in the `userprog` directory and change it to use the tests that you want to run
1. Simply add to (or remove from) the list of test files you see in the `TEST_FILES` variable
2. The list of all the tests can be seen by running `ls build/tests/userprog` (all of the green executables in here are test files)
