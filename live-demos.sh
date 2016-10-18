# jobs
function long_stuff {
  sleep 3
  echo "I'm done"
}

for i in {1..10}; do
  long_stuff
done

for i in {1..10}; do
  long_stuff &
done


# Ctrl-Z + `fg` in Vim
# OPEN VIM, CTRL Z, `fg`


# conditionals
true && echo "true"
false || echo "false"
false; echo "this shows up anyway"

# demo extract
# cd downloads
# extract XXXX


# output redirection
echo "world" > hello.txt
cat hello.txt

echo "world" > /dev/null

echo "world" 1> hello.out
cat hello.out

echo "world" 2> hello.err
cat hello.err

this_does_not_exist 2> hello.err
cat hello.err

echo "world" 2>&1 hello.both
cat hello.both

sb () {
    if which subl &> /dev/null;
        then subl $@
    elif which subl3 > /dev/null;
        then subl3 $@
    else
        subl $@ 2>&1 > /dev/null &
    fi
}

# pipes
cat mobile_apps | head -n 2
cat mobile_apps | grep fa
ps ax | grep neovim
ps ax | grep -v grep | grep vim
ps ax | grep -v grep | grep vim | cut -d ' ' -f 1
kill -9 $(ps ax | grep -v grep | grep vim | cut -d ' ' -f 1)
ps ax | grep -v grep | grep vim | cut -d ' ' -f 1 | xargs kill -9

ls . | xargs -n 1 echo "a file called "

# sed
echo "I'm Miguel" | sed s/Miguel/Fernando/
echo "I'm Miguel. I repeat, Miguel" | sed s/Miguel/Fernando/
echo "I'm Miguel. I repeat, Miguel" | sed s/Miguel/Fernando/g

# signals
# leave this to Fernando
