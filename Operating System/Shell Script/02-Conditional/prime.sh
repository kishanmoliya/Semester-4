read -p "Enter the Number: " n 

temp=2
flag=1
while [ $temp -le `expr $n / 2` ]
do
    if [ `expr $n % $temp` -eq 0 ]
    then
        flag=2
        break
    fi
    temp=`expr $temp + 1`
done

if [ $flag -eq 1 ];
then
    echo "Number is Prime"
else
    echo "Number is Not Prime"
fi