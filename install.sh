pkg install tmux openssh

LINE_TO_ADD="alias host = ~/.config/host.sh"
mv host.sh ~/.config/
# Check if the line already exists in .bashrc to prevent duplicates

if ! grep -qxF "$LINE_TO_ADD" ~/.bashrc; then
    echo "$LINE_TO_ADD" >> ~/.bashrc
fi
echo "thank you  (`u`) "

