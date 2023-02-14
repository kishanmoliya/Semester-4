read -p "Enter the Number: " n

s=0
rev=""
temp=$n
while [ $n -gt 0 ]
do
    s=$(( $n % 10 ))
    n=$(( $n / 10 ))
    rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ];
then
    echo "Number is Pelindrom"
else
    echo "Number Not is Pelindrom"
fi