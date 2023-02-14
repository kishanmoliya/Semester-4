read -p "Enter Number a : " a
read -p "Enter Number b : " b
read -p "Enter Number c : " c

# if [ $a -gt $b -a $a -gt $c ]
# then
#     echo "$a is Largest."
# elif [ $b -gt $a -a $b -gt $c ]
# then
#     echo "$b is Largest."
# else
#     echo "$c is Largest."
# fi
 
if [ $a -gt $b ]
then 
    if [ $a -gt $c ]
    then
        echo "$a is Largest."
    else   
        echo "$c is Largest."
    fi
else
    if [ $b -gt $c ]
    then
        echo "$b is Largest."
    else   
        echo "$c is Largest."
    fi
fi
    