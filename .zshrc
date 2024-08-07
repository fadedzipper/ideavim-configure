# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions sudo extract)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# source /usr/share/nvm/init-nvm.sh

#for alias of git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gl='git log --color --graph --pretty=oneline --abbrev-commit'
# alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gi='git commit'
alias gd='git diff'
alias gc='git checkout '
alias gcl='git clone'

#for alias of ls proxychains
if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi
alias s='ls'
alias p='proxychains'
alias c='cd'
alias u='sudo'
alias m='make'
alias cg='cargo'
alias cm='cmake'
alias o='code .'
alias py='python -m colored_traceback'
alias cn='code --new-window'
#set bash vi mode
# set -o vi

#change ctrl caps key
alias chkbno='setxkbmap -option "ctrl:nocaps"'
alias chkbswap="setxkbmap -option 'ctrl:swapcaps'"
setxkbmap -option "ctrl:nocaps"

#startup proxy
countproxy=`ps -ef |grep clash |grep -v "grep" |wc -l`
if [ 0 -eq $countproxy ]
then
    (cd clash; ./clash -d . &> output &;)
fi

# for riscv64 qemu6.0.92
# export PATH=$PATH:/home/ffmeng/qemu/build/riscv64-softmmu/:/home/ffmeng/qemu/build/riscv64-linux-user/
# for riscv64 qemu5.2.0 because rustsbi problems
# export PATH=$PATH:/home/ffmeng/qemu-5.2.0/build/riscv64-softmmu/:/home/ffmeng/qemu-5.2.0/build/riscv64-linux-user/

# for crossing setting of riscv64-unknown-elf-binutils gcc etc.
# export PATH=$PATH:/opt/riscv/bin/

#for go bin
# export PATH=$PATH:$(go env GOPATH)/bin

# for python
export PATH=$PATH:/home/ffmeng/.local/bin

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# ysyx and pa
export NEMU_HOME=/home/ffmeng/ysyx/ysyx-workbench/nemu
export AM_HOME=/home/ffmeng/ysyx/ysyx-workbench/abstract-machine
export NPC_HOME=/home/ffmeng/ysyx/ysyx-workbench/npc
export NVBOARD_HOME=/home/ffmeng/ysyx/ysyx-workbench/nvboard
export NAVY_HOME=/home/ffmeng/ysyx/ysyx-workbench/navy-apps

export QSYS_ROOTDIR="/home/ffmeng/intelFPGA_lite/21.1/quartus/sopc_builder/bin"
export PATH="$PATH:/home/ffmeng/intelFPGA_lite/21.1/quartus/bin"
export PATH="$PATH:/home/ffmeng/intelFPGA/20.1/modelsim_ase/bin"

# for ccache 
export PATH="/usr/lib/ccache:$PATH"
# for go
export PATH="$PATH:/usr/local/go/bin"

# for java
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export CLASSPATH=.:${JAVA_HOME}/lib
# for scala sbt and for Metals (vscode plugin for scala)
export JAVA_OPTS="$JAVA_OPTS -Dhttps.proxyHost=127.0.0.1 -Dhttps.proxyPort=7890"

# for neovim
export PATH="$PATH:$HOME/neovim/bin"

# for goland
export PATH="$PATH:$HOME/GoLand-2023.2.4/bin"

# for flatpak
# export PATH="$PATH:$XDG_DATA_DIRS"

# proxy for rustup
alias rsp="export https_proxy='127.0.0.1:7890'; export http_proxy='127.0.0.1:7890'"
alias gop="export https_proxy='https://127.0.0.1:7890'; export http_proxy='http://127.0.0.1:7890'"

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/ffmeng/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/ffmeng/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/ffmeng/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/ffmeng/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

