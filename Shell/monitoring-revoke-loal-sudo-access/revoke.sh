#!/bin/bash
path='/root'
while read -r line
do
        host=$( echo $line | awk ' { print $1 } ')
        user_s=$(echo $line | awk ' { print $2 } ')
        sdat=$(echo $line | awk ' { print $3 } ')
        day=$(echo $line | awk ' { print $4 } ')
        s_u=$(echo $line | awk ' { print $5 } ')
        sud="/home/vkumar027c/revoke_all/sudoers"
        path="/home/bsdscript/bsd/revoke_all/"
        user="$sdat.$day.$user_s.$s_u"
        echo $user
        export  user
        echo $host |grep "#"
        te=$(echo $? )
        echo $?
        if [ $te  -ge 1 ]
        then
                sdat=$(echo $line | awk ' { print $3 } ')
                edat=$(date +%Y-%m-%d)
                cdat=$(echo $(($(($(date -d "$edat" "+%s") - $(date -d "$sdat" "+%s"))) / 86400)))
                echo $cdat
                if [ $cdat -ge $day ]
                then
                        echo "===========================================================================">>$path/log
                        d=$(date)
                        echo $d:$user_s:$host>>$path/log
                        ssh -q $host "user=$user bash -s"  <$path/support>>$path/log
                        if [ $? -eq 0 ]
                        then
                                sed -i "s/$line/#$line/" $path/info
                        else
                                echo "Not able to ssh to the server">>$path/log
                        fi
                        echo "===========================================================================">>$path/log
                        #sed -i "s/$line/#$line/" $path/info
                fi
        fi
done</root/info
