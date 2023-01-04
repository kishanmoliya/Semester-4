echo "Memory information"

echo "Enter the value of a: "
read a
echo "Enter the value of b: "
read b

sum=`expr $a + $b`
sub=`expr $a - $b`
mul=`expr $a \* $b`
div=`expr $a / $b`

echo "Sum = $sum"
echo "Sub = $sub"
echo "Milti = $mul"
echo "Div = $div"
