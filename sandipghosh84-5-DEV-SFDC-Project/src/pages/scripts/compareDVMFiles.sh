#compare files in two directories
echo 1-current directory 
pwd
cd dir2
fn=$(ls -t | head -n1)
echo $fn
cd ..
echo 2-current directory 
pwd
for file in dir1/*.dvm; do
        #echo $file
        diff "$file" "dir2/${fn##*/}" >> output.txt
        cat output.txt
done
