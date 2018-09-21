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

0. Go into the directory for the current project (at first it'll be userprog/): `cd userprog`
1. Build the directory with `make`
2. Run `make check`:
   - You'll see a lot of stuff being output, but if you're patient for about 10-30 minutes, you'll get a summary of your results at the end.

# How to run a single pintos test

The easiest thing to do is run `make check` and then copy the command being run into a script. For example you might see something like this

```
cd build && make check
make[1]: Entering directory '/home/justin/Github/Pintos_Labs/userprog/build'
pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q  -f run args-none < /dev/null 2> tests/userprog/args-none.errors > tests/userprog/args-none.output
perl -I../.. ../../tests/userprog/args-none.ck tests/userprog/args-none tests/userprog/args-none.result
fail tests/userprog/args-none
```

There are three things for each test that gets run:

(1)
`pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/args-none -a args-none -- -q  -f run args-none < /dev/null 2> tests/userprog/args-none.errors > tests/userprog/args-none.output`

(2)
`perl -I../.. ../../tests/userprog/args-none.ck tests/userprog/args-none tests/userprog/args-none.result`

(3)
`fail tests/userprog/args-none`

You really only care about the first one. Copy the entire command except for everything after the `< /dev/null` part since that is just used to redirect output and error messages (look familiar?)

Copy that command into a file (e.g. test-new-test.sh) so that it's easier to run and so that it doesn't get overwritten when you try to copy something else. Also make sure the file is an executable so you can actually run it `sudo chmod 755 test-new-test.sh`.

See the `test-args-none.sh` file in the `userprog` directory that I've provided for you to see an example of what your file should look like.
