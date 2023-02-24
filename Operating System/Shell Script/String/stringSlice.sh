read -p "Enter String : " str

echo ${str:1:3}
#####

for i in $str 
do
    echo -n "$i, "
done
echo
#######

for (( i=0; i<${#str}; i++ ))
do
    length=`expr $length + 1`
done
echo "Length of String = $length"
########

echo -n "Reverse String = "
for (( i=$length; i>=0; i-- ))
do
    echo -n ${str:$i:1}
done