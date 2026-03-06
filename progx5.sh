while true
do
echo "---------------------------"
echo "FILE MANAGEMENT PROGRAM"
echo "1. Create File"
echo "2. Copy File"
echo "3. Move File"
echo "4. Delete File"
echo "5. Display File"
echo "6. Exit"
echo "---------------------------"

read -p "Enter your choice: " choice

if [ $choice -eq 1 ]; then
    read -p "Enter filename to create: " fname
    
    if [ -f "$fname" ]; then
        echo "Error: File already exists!"
    else
        read -p "Enter content: " content
        echo "$content" > "$fname"
        echo "File '$fname' created successfully."
    fi


elif [ $choice -eq 2 ]; then
    read -p "Enter source filename: " source
    read -p "Enter destination filename: " dest

    if [ -f "$source" ]; then
        cp "$source" "$dest"
        echo "File copied successfully."
    else
        echo "Error: Source file does not exist!"
    fi


elif [ $choice -eq 3 ]; then
    read -p "Enter filename to move: " source
    read -p "Enter new filename: " dest

    if [ -f "$source" ]; then
        mv "$source" "$dest"
        echo "File moved successfully."
    else
        echo "Error: Source file does not exist!"
    fi


elif [ $choice -eq 4 ]; then
    read -p "Enter filename to delete: " fname

    if [ -f "$fname" ]; then
        rm "$fname"
        echo "File deleted successfully."
    else
        echo "Error: File does not exist!"
    fi


elif [ $choice -eq 5 ]; then
    read -p "Enter filename to display: " fname

    if [ -f "$fname" ]; then
        echo "Content of '$fname':"
        cat "$fname"
    else
        echo "Error: File does not exist!"
    fi


elif [ $choice -eq 6 ]; then
    echo "Exiting program..."
    break

else
    echo "Invalid choice!"
fi

done
