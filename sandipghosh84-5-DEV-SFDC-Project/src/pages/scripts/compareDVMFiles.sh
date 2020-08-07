#compare files in two directories
for file in dir1/*.dvm; do
	filename = `ls -t1 |  head -n 1`
	cat filename
    diff "$file" "dir2/${file##*/}" >> output.txt
done
