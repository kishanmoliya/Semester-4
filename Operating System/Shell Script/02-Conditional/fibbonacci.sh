read -p "Enter number : " n

a=0
b=1

echo -n "Fibbonacci Series is = "

for (( i=0; i<n; i++ ))
do  
    echo -n "$a "
    fn=$(( a+b ))
    a=$b
    b=$fn
done