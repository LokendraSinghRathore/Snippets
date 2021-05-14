#first... to cleate multiple files 
for i in {a..x}
do
	touch $i.tat && echo $i >$i.txt
done

#to rename all files with numbers

arr=()
for file in *.txt
do
  arr=(${arr[*]} "$file")
done
aa=${#arr[@]}
i=0
while [ $i -lt $aa ]
do
  mv ${arr[$i]} $i.txt
  let "i++"
done
