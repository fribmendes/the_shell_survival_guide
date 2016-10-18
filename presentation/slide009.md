        sb () {
            if which subl &> /dev/null;
                then subl $@
            elif which subl3 > /dev/null;
                then subl3 $@
            else
                $HOME/.dotfiles/bin/subl $@ 2>&1 > /dev/null &
            fi
        }
















































































slide 009
