#compare files in two directories
echo 1-current directory 
pwd
cd dir2
#fn=$(ls -t | head -n1)
#echo $fn
cd ..
echo 2-current directory 
pwd
for fn in dir2/*.dvm; do
        for file in dir1/*.dvm; do
                #echo $file
                #diff --context=1 "$file" "dir2/${fn##*/}" >> output.txt
                filestr1=`basename $file`
                filestr2=`basename $fn`
                #echo filestr1
                #echo filestr2
                #if [[ "$file" == "$fn" ]]; then
                #if [[ $file = $fn ]]; then
                if [[ "$filestr1" == "$filestr2" ]]; then
                        echo $fn
                        diff --context=1 "$file" "dir2/$fn" >> output.txt
                fi
          done
done
cat output.txt
