# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# theme
ZSH_THEME="gianu"

# Use modern completion system
autoload -Uz compinit
compinit

#######################################################################
# Path Addition                                                       #
#######################################################################

# Python anacoda
export PYTHONPATH="$HOME/anaconda/bin"
export PATH="$PYTHONPATH:$PATH"

#Golang
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/GoWorkspace/bin"
export GOPATH="$HOME/GoWorkspace"

#sbt
export PATH="$PATH:/$HOME/sbt-0.13.13/sbt-launcher-packaging-0.13.13/bin"
export SBTPATH="$HOME/sbt-0.13.13/sbt-launcher-packaging-0.13.13"

#Scala
export SCALA_HOME="$HOME/scala/scala-2.12.1"
export PATH="$PATH:$SCALA_HOME/bin"

#Leptonica
export LEPTONICAPATH="$HOME/leptonica/"
export PATH="$PATH:$LEPTONICAPATH/prog"

#rstudio
export RSTUDIOPATH="$HOME/rstudio/usr/lib/rstudio/"
export PATH="$PATH:$RSTUDIOPATH/bin"

#eclipse neon
export ECLIPSENEONPATH="$HOME/eclipse/java-neon/eclipse/"
export PATH="$PATH:$ECLIPSENEONPATH"


######################################################################
# Style                                                              #
######################################################################

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# DONT WRITE BYTE CODE FOR PYTHON
export PYTHONDONTWRITEBYTECODE="NO"

# ALIASES

# for ls
alias ls="ls --color=auto"

# for pycharm 
alias charm5="$HOME/Downloads/pycharm-community-5.0.2/bin/pycharm.sh"

# for google chrome 
alias chrome="google-chrome-stable"

# for IntelliJ
alias IntelliJ="$HOME/IntelliJ/idea-IC-162.1121.32/bin/idea.sh"

# for MARS
alias MARS="java -jar $HOME/MARS/Mars4_5.jar"

# for sbt
alias sbt="java -jar $SBTPATH/bin/sbt-launch.jar"

# END ALIASES 
