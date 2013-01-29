TERM='xterm-256color'
export PATH=$PATH:/usr/local/Cellar/make/3.82/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:~/bin
PATH=/usr/local/bin:/Users/test/.rvm/gems/ruby-1.9.3-p125@enova_portfolio/bin:/Users/test/.rvm/gems/ruby-1.9.3-p125@global/bin:/Users/test/.rvm/rubies/ruby-1.9.3-p125/bin:/Users/test/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/usr/local/Cellar/make/3.82/bin:/Users/test/bin
export PATH=/usr/local/bin:/usr/local/bin:/Users/test/.rvm/gems/ruby-1.9.3-p125@enova_portfolio/bin:/Users/test/.rvm/gems/ruby-1.9.3-p125@global/bin:/Users/test/.rvm/rubies/ruby-1.9.3-p125/bin:/Users/test/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/usr/local/Cellar/make/3.82/bin:/Users/test/bin

alias ls='ls -G'

alias e="emacsclient -t --alternate-editor=''"

alias st='git status'
alias br='git branch'
alias sh='git show'
alias co='git commit'
alias ga='git add'
alias mg='git merge'
alias gh='git hist'
alias ch='git checkout'

alias cpsha='echo $(git rev-parse HEAD) | tr -d \\n | pbcopy'
alias root='cd $(git rev-parse --show-toplevel)'
alias pg='ps aux | grep'

alias bi='bundle install'
alias be='bundle exec'
alias cuke='bundle exec cucumber -r features --guess'

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

YELLOW='\[\e[0;33m\]'
WHITE='\[\e[0;37m\]'
PS1="[\W$YELLOW$(parse_git_branch)$WHITE] $ "

alias src="source ~/.bash_profile"
alias bashrc="e ~/.bashrc"
