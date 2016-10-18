# The Shell Survival Guide

                                         Fernando Mendes

                                         tw: @fribmendes
                                          gh: @frmendes

                                          Miguel Palhas

                                           tw: @naps62
                                           gh: @naps62

                                            @subvisual


## What's a shell?

```shell
$ echo $SHELL
/usr/local/bin/zsh
```


## Bash Scripting


```
$ vim script.sh

#!/usr/bin/env sh

echo $SHELL
```




## Jobs



## Conditionals

```
if [[ ! -d .git ]]; then
  git init
fi
```


```
extract () {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.tar.xz)    tar xvJf $1    ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *.xz)        unxz $1        ;;
      *.exe)       cabextract $1  ;;
      *.ace)       unace $1       ;;
      *.arj)       unarj $1       ;;
      *)           echo "'$1': unrecognized file compression" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
```


## Looping

TODO

## Output redirection

```
$ echo "world" > hello.txt && cat hello.txt
world
```


```
$ echo "world" 1> hello.txt && cat hello.txt
world
```


```
$ cat nofile.txt 2> err.txt && cat err.txt
cat: nofile.txt: No such file or directory
```


```
sb () {
    if which subl &> /dev/null;
        then subl $@
    elif which subl3 > /dev/null;
        then subl3 $@
    else
        $HOME/.dotfiles/bin/subl $@ 2>&1 > /dev/null &
    fi
}
```

## File Searching

```bash
$ ps ax | grep neovim

20463 s004  S+     0:16.02 neovim slides.md
32583 s006  R+     0:00.00 grep neovim
```


```bash
$ ps ax | grep -v grep | grep neovim

20463 s004  S+     0:16.02 neovim slides.md
```


## Useful commands


### cut

```bash
$ ps ax | grep -v grep | grep neovim | cut -d ' ' -f 1

20463
```


### uniq

TODO


### sort

TODO


### find

```sh

$ find . -name *.rb
./app.rb
./lib/crawler.rb

$ find . -type d
.
./bin
./lib
./lib/auth
./test
```


### xargs

```
$ ps ax |
> grep -v grep |
> grep neovim |
> cut -d ' ' -f 1 |
> xargs kill -9
```


## Doing it better

### ag/ripgrep


## Doing it better

### fzf


## Installing packages


## Different shells


## Different shells

- bash


## Different shells

- bash
- zsh


## Different shells

- bash
- zsh
- fish



