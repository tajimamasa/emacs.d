
# set tmux panes for ide

if [ "$#" -eq 0 ]; then
    tmux split-window -v
    tmux split-window -h
    tmux resize-pane -D 15
    tmux select-pane -t 1
else
  case $1 in
    1)
      ;;
    2)
      ;;
    3)
      ;;
    *)
      echo [ERROR] "$1" は設定されていない引数です。
      ;;
  esac
fi
