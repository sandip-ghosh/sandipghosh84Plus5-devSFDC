#compare files in two directories
cd dir2
fn=$(ls -t | head -n1)
echo $fn
for file in dir2/*.dvm; do
        diff "$file" "dir1/${fn##*/}" >> output.txt
done
