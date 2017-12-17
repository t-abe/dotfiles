HISTFILE=$HOME/.zsh-history           # 履歴をファイルに保存する
HISTSIZE=100000                       # メモリ内の履歴の数
SAVEHIST=100000                       # 保存される履歴の数
setopt extended_history               # 履歴ファイルに時刻を記録
function history-all { history -E 1 } # 全履歴の一覧を出力する
TERM=xterm-256color
setopt append_history
setopt hist_ignore_dups
setopt share_history
setopt ignore_eof
autoload -U compinit
compinit

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

RPROMPT="%1(v|%F{green}%1v%f|)"

autoload -U promptinit
promptinit
export PS1="%F{green}%n@%M:%~%%%f "
SPROMPT="correct: %R -> %r ? "

setopt auto_pushd
setopt auto_cd

alias o=xdg-open
alias pbcopy=xsel -bi
alias pbpaste=xsel -bo


