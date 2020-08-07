#compare files in two directories
pwd
cd dir2
fn=$(ls -t | head -n1)
echo $fn
cd ..
pwd
for file in dir1/*.dvm; do
        diff "$file" "dir2/${fn##*/}" >> output.txt
done
