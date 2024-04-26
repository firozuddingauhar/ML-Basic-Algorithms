exec < index.txt
while read -r line
do
    mkdir "$line"    
    cd "$line" || exit
    touch instruct.txt
    cd ..
done
echo "Directories created."
