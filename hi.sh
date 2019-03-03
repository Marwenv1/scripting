#! /bin/bash
source 1.sh
action=$(yad --width 600 --entry --title "application" \
    --button="gtk-ok:0" --button="gtk-close:1" \
    --text "Choose action:" \
    --entry-text \
    "lblk" "ldf" "help" "courbe_du_lblk_ldf"\
)
ret=$?
[[ $ret -eq 1 ]] && exit 0

case $action in
    lblk*) cmd="sudo lsblk" ;;
    ldf*) cmd="sudo df" ;;
    help*) cmd="sudo -h" ;;
    courbe_du_lblk*) test ;;
    *) exit 1 ;;    
esac

eval exec $cmd
