#Generates 10 Random 3 digit number
#Store this random numbers into a array
#find 2nd largest & 2nd smallest element

for((i=0; i<10; i++))
do
      random=$((RANDOM%900 + 100))
      random_num[$i]=$random
done
      echo "array is:" ${random_num[@]}

min_num=${random_num[0]}
max_num=${random_num[0]}
sec_min='unset'
sec_max='unset'

for i in "${random_num[@]}"
do
      if(($i < $min_num))
      then
          sec_min=$min_num
          min_num=$i
      fi

      if(($i > $max_num))
      then
          sec_max=$max_num
          max_num=$i
      fi
done

echo "2nd smallest is: " $sec_min
echo "2nd largest is: " $sec_max
