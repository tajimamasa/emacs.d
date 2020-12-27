
autoload -Uz colors
colors

bindkey -e
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified
autoload -Uz compinit
#compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
       /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

RPROMPT="[%{${fg[cyan]}%}%T%{${reset_color}%}|%{${fg[green]}%}%d%{${reset_color}%}]"
PROMPT="%{${fg[red]}%}-> %{${reset_color}%}"

alias e='emacs'
alias md='open /Applications/Typora.app'
alias zsh='emacs ~/.zshrc'
alias szsh='source ~/.zshrc'
alias ide='~/.scripts/ide.sh'

alias python='python3.8'
alias pip='pip3.8'

alias ls='ls -G'
alias la='ls -a'
alias ll='ls -lh'

# 同時に起動しているzshの間でhistoryを共有する
setopt share_history
# 同じコマンドをhistoryに残さない
setopt hist_ignore_all_dups
# スペースから始まるコマンドをhistoryに残さない
setopt hist_ignore_space
# historyに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
# 高機能なワイルドカード展開を使用する
setopt extended_glob
# cd無しでもディレクトリ移動
setopt auto_cd

