#Sort the array & then find 2nd largest and 2nd smallest element

array=()

for (( i=0; i<10; i++ ))
do
	a=$(( RANDOM%900 + 100 ))
	array[((i))]+=$a
done

	echo "array is ${array[@]} "

arrays=(`echo ${array[@]} | tr " " "\n" | sort `)

	echo ${arrays[@]}

echo "2nd smallest element is: " ${arrays[1]}
echo "2nd largest element is: " ${arrays[-2]}
