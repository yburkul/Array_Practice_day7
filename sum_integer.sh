#Write a program to show sum of three integer adds to ZERO

size=6
array=( -3 -2 -1 1 2 3 )

for(( i=0 ; i<$size-2 ; i++ ))
do
   for(( j=$i+1; j<$size-1; j++ ))
   do
       for(( k=$j+1 ; k<$size ; k++ ))
       do
          sum=$(($((${array[i]}+${array[j]}))+${array[k]}))
               if [ $sum == 0 ]
               then
                   echo "Element: " ${array[i],${array[j]},$array[k]}
                   echo "Sum of three element: " $sum
               fi
        done
    done
done
