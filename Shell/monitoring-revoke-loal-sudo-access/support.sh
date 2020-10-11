p="/etc/sudoers"
ls -ld /sudo
if [ $? -gt 0 ]
then
        mkdir /sudo
fi
dt=$(date +"%d-%m-%Y-%H:%M:%S:%N")
cp -p $p /sudo/sudoers_$dt
usr=$(echo $user | awk -F"." '{ print $3 }' )
s_u=$(echo $user | awk -F"." '{ print $4}' )
day=$(echo $user | awk -F"." '{ print $2 }' )
sdat=$(echo $user | awk -F"." '{ print $1 }' )
sdat=$(echo $user | awk -F"." '{ print $1 }' )
edat=$(date +%Y-%m-%d)
cdat=$(echo $(($(($(date -d "$edat" "+%s") - $(date -d "$sdat" "+%s"))) / 86400)))
echo The Sudo user is : $s_u
if [ $cdat -ge $day ]
then
        #ud=$(grep "$usr.*ALL.*=.*($s_u)" /etc/sudoers | head -n 1 |cut -d"/" -f1)
        ud=$(grep "$usr.*ALL.*=.*($s_u)" /etc/sudoers | head -n 1 )
        grep "$usr.*ALL.*=.*($s_u)" /etc/sudoers >/dev/null
        if [ $? -eq 0 ]
        then
                sed -i "/$ud/d" $p
                echo The user is removed: $usr
        fi
        grep "$usr.*ALL.*=.*(ALL)" /etc/sudoers >/dev/null
        if [ $? -eq 0 ]
        then
                ud_r=$(grep "$usr.*ALL.*=.*(ALL)" /etc/sudoers | head -n 1)
                sed -i "/$ud_r/d" $p
                echo The user is removed: $usr
        fi
fi
