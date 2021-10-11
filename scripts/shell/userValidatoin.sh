#!/bin/bash

i=0
if [ $# -eq 2 ];
then
        actionUser=$1
        allowedUser=$2
        if [ -n "$actionUser" ] && [ -n "$allowedUser" ];
        then
                for user in $(echo "$allowedUser" | tr , '\n')
                do
                        if [ -n "$user" ];
                        then
                                if [ "$user" == "$actionUser" ];
                                then
                                        echo "User Allowed to proceed. . ."
                                        i=1
                                else
                                        echo "User not allowed to proceed further "
                                fi
                        else
                                continue
                        fi
                done
        else
                echo "Please provide proper input to proceed further "
                i=2
        fi
else
        echo "Please provide proper input to proceed further "
        i=2
fi

if [ $i -eq 2 ];
then
        exit 101
elif [ $i -eq 1 ];
then
        echo "Everything fine.. Please continue . . . "
else
        exit 1
fi
