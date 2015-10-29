# keybind like vim
#bindkey -v

#autocomplite
autoload -U compinit; compinit


#directory stack(like bookmark)
setopt auto_pushd
setopt pushd_ignore_dups

#extend glob enable
setopt extended_glob

#delete history
setopt hist_ignore_all_dups

#not add for history
setopt hist_ignore_space

#suggest next path
#zstyle ':completion:*:default' menu select=1

#add color
autoload colors
colors

### Ls Color ###
# 色の設定
export LSCOLORS=Exfxcxdxbxegedabagacad
# 補完時の色の設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# ZLS_COLORSとは？
export ZLS_COLORS=$LS_COLORS
# lsコマンド時、自動で色がつく(ls -Gのようなもの？)
export CLICOLOR=true
# 補完候補に色を付ける
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

setopt auto_param_slash
setopt mark_dirs
setopt auto_menu
setopt auto_param_keys

if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

# alias for u-fukui
alias uf='ssh ji140087@ufportal.b.cii.u-fukui.ac.jp'
alias ufpass='echo "qb0TSeEl"'

#alias for aws
alias sshaws='ssh -i t2Micro.pem ec2-user@52.10.49.251'

#alias for quicktime player
alias quick='open -a "quicktime player"'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
