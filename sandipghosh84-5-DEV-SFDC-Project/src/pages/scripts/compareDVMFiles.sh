#compare files in two directories
pwd
cd dir2
fn=$(ls -t | head -n1)
echo last committed file --> $fn
cd ..
pwd
for file in dir1/*.dvm; do
        echo $file
        diff "$file" "dir2/${fn##*/}" >> output.txt
        cat output.txt
done
