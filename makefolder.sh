while IFS= read -r line; do
    # Create a directory for each line
    mkdir "$line"
done < "$1"

echo "Directories created."