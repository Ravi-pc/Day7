counter=0
for((i=0; i<10; i++))
do
random=$((RANDOM % 900 + 100))
arr[((counter++))]=$random
done
echo ${arr[@]}
for ((i = 0; i<10; i++))
do
    
    for((j = 0; j<10-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[@]}
