#compare files in two directories
for file in dir2/*.dvm; do
    diff "$file" "dir1/${file##*/}" >> output.txt
    cat output.txt
    cp output.txt /home/runner/work/.
done
