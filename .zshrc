alias vi="nvim"
alias cd="z"
alias ls="lsd"
alias lg="lazygit"
alias zj="zellij"
alias cat="bat"

autoload -U compinit
compinit

zellij_tab_name_update() {
  if [[ -n $ZELLIJ ]]; then
    tab_name=''
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        tab_name+=$(basename "$(git rev-parse --show-toplevel)")/
        tab_name+=$(git rev-parse --show-prefix)
        tab_name=${tab_name%/}
    else
        tab_name=$PWD
            if [[ $tab_name == $HOME ]]; then
         	tab_name="~"
             else
         	tab_name=${tab_name##*/}
             fi
    fi
    command nohup zellij action rename-tab $tab_name >/dev/null 2>&1
  fi
}

zellij_tab_name_update

export PATH="$PATH:/opt/homebrew/bin/"
source <(fzf --zsh)
eval "$(zoxide init zsh)"
eval "$(mcfly init zsh)"
eval "$(sheldon source)"
eval "$(starship init zsh)"

# proto
export PROTO_HOME="$HOME/.proto";
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH";

function ghe() {
  git config --global user.name "kenzwada"
  git config --global user.email "kenzwada@lycorp.co.jp"
}

function github() {
  git config --global user.name "Kenzo-Wada"
  git config --global user.email "used.acormhib@gmail.com"
}
