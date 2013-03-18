ZSH=$HOME/.oh-my-zsh

ZSH_THEME="aussiegeek"

plugins=(git osx rails3 history-substring-search ruby bundler)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

touch ~/.zshmarks && source ~/.zshmarks
function b() {
  echo "hash -d $1=\"`pwd`\"" >> ~/.zshmarks && source ~/.zshmarks
}

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
