exec < index.txt
while IFS= read -r line
do
    mkdir "$line"    
    cd "$line" || exit
    touch instruct.txt
    cd ..
done
echo "Directories created."