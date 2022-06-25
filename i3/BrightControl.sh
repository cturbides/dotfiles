#!/bin/bash

#===========================================================
#==================                     ====================
#==================  Created by Ty4115  ====================
#==================                     ====================
#===========================================================

#Defining a bright variable
ComputerBright=$(xbacklight)
roundedCB=${ComputerBright%.*}

#Getting user input
if [[ "$1" == "-U" ]];then
    option="Up"
elif [[ "$1" == "-D" ]];then
    option="Down"
else
    echo "Usage: BrightControl.sh --option
    Available options:
    -U === Up
    -D === DOwn"
fi

#Leveling the bright
if [[ "$option" == "Up" ]];then
    if [[ $roundedCB -lt 20 ]];then
        xbacklight -inc 5
    else
        xbacklight -inc 10
    fi
elif [[ "$option" == "Down" ]];then
    if [[ $roundedCB -lt 15 ]];then
        echo "Cant decrease more"
    else
        xbacklight -dec 10
    fi
fi
