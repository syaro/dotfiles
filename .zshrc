# -------------------------------------
# zsh config
# -------------------------------------
ZSH=$HOME/dotfiles/oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
ZSH_CUSTOM=$ZSH"/../custom"
plugins=(adb brew brew-cask coffee git git-extras git-flow git-remote-branch history node npm nvm nyan osx python sudo gradle)
# -------------------------------------
# settings
# -------------------------------------
autoload -U compinit
compinit
setopt correct
setopt prompt_subst
setopt auto_param_slash
setopt no_tify
setopt mark_dirs
setopt list_types
setopt hist_ignore_dups
setopt auto_menu
setopt auto_param_keys
setopt print_eight_bit
setopt complete_in_word
setopt magic_equal_subst
setopt interactive_comments
setopt always_last_prompt
setopt extended_glob
setopt globdots
setopt list_packed
bindkey "^I" menu-complete
zstyle ':completion:*:default' menu select=2
# -------------------------------------
# zhs-completions
# -------------------------------------
fpath=(/usr/local/share/zsh-completions $fpath)
# -------------------------------------
# correct
# -------------------------------------
setopt correct
SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [No/Yes/Abort/Edit]"
# -------------------------------------
# auto cd
# -------------------------------------
setopt auto_cd
# -------------------------------------
# auto pushd
# -------------------------------------
setopt auto_pushd
# -------------------------------------
# cdr
# -------------------------------------
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':completion:*' recent-dirs-insert both
zstyle ':chpwd:*' recent-dirs-max 500
zstyle ':chpwd:*' recent-dirs-default true
zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/shell/chpwd-recent-dirs"
zstyle ':chpwd:*' recent-dirs-pushd true
# -------------------------------------
# global alias
# -------------------------------------
alias -g g="git"
# -------------------------------------
# history
# -------------------------------------
HISTFILE=~/.zsh_histfile
HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
# -------------------------------------
# load source
# -------------------------------------
source ~/.zshrc.env
