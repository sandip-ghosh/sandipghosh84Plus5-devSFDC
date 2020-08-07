#compare files in two directories
for file in d1/*.dvm; do
    diff "$file" "d2/${file##*/}" >> output.txt
done
