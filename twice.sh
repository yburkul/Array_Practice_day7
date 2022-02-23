#find the digit that are repeated twice like 33,77,88 etc
count=0
for (( counter=1; counter<=100; counter++ ))
do
   if [[ $counter%11 -eq 0 ]]
   then
        arrayValues[count++]=$counter
   fi
done

echo "Number repeated twice: " ${arrayValues[@]}
