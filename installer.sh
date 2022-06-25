#!/bin/bash

user=$(whoami)
power_dir=$(pwd)
file_dir=$(dirname $0)

checkout_dirs(){
    if [[ $(diff $file_dir $power_dir) ]]
    then
        return 1        #If the two dirs are different
    else
        equalDirs=true
    fi

    if [[ -d /home/$user/.config ]] && [[ $equalDirs ]]
    then
        return 2    #Dir exist
    else
        return 3    #Dir doesn't exist
    fi

}

copy_process(){
    cp -r $file_dir/alacritty/ /home/$user/.config/                                                                                                
    cp -r $file_dir/i3/ /home/$user/.config/                                                                                                       
    cp -r $file_dir/kitty/ /home/$user/.config/                                                                                                    
    cp -r $file_dir/polybar/ /home/$user/.config/                                                                                                  
    cp -r $file_dir/rofi/ /home/$user/.config/                                                                                                     
    cp -r $file_dir/scripts /home/$user/                                                                                                           
    cp -r $file_dir/vim/.vim/ /home/$user/                                                                                                         
    cp $file_dir/vim/.vimrc /home/$user/   

}

#Executing the function and intializing a variable with the 
#   return value
checkout_dirs
retval="$?"

if [[ $retval -eq 1 ]]
then
    echo "Execute this file from the original dir!"
elif [[ $retval -eq 2 ]]
then
    echo ".config dir exists!"
    copy_process
    for DIR in $(ls)
    do
        echo "$DIR copied!"
    done
elif [[ $retval -eq 3 ]]
then
    echo ".config dir doesn't exists!"
    mkdir /home/$user/.config/
    copy_process
    for DIR in $(ls)
    do
        echo "$DIR copied!"
    done                
fi


