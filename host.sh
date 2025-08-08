

echo "Do You Want to Change The Port(y/n) (default= 2022)"
ch="n"

if [ch == "y"];then
  echo "enter Port"
  read val
  echo "Port $val" >> $PREFIX/etc/ssh/ssh_config
fi

pkill ssh
sshd
ps aux | grep sshd

echo "starting server..."

delay(10)
tmux new-session -s main
tmux a -t main


