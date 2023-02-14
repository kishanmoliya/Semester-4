read -p "Enter the Starting Number: " start
read -p "Enter the Ending Number: " end

i=$start

while [ $i -le $end ]
do
    j=$i
    rev=""
    remainder=0
    while [ $j -gt 0 ]
    do
        remainder=$(( $j % 10 ))
        j=$(( $j / 10 ))
        rev=$( echo ${rev}${remainder} )
    done

    if [ $i -eq $rev ];
    then
        echo "$i"
    fi

    i=`expr $i + 1`
done
