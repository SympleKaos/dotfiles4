alias be="bundle exec"
alias flushdns="sudo discoveryutil mdnsflushcache;sudo discoveryutil udnsflushcaches; say flushed"
alias ll="ls -al"
alias so="source"
alias v="vim"
alias vi="vim"
alias gs="git status"
alias gdiff="git diff"
alias gcm="git checkout master"
alias gpo="git push origin "
alias gco="git checkout "
alias gdn="git diff --name-only"

set PYTHONPATH /usr/local/bin/python
set PATH ~/.bin $PATH
set PATH ~/Library/Python/2.7/bin $PATH
set PATH /usr/local/share/python $PATH
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
set PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH
set PATH /usr/local/bin $PATH
set PATH /usr/local/mysql/bin $PATH
rbenv rehash ^/dev/null
function rbenv
    set -l command $argv[1]
    if test (count $argv) -gt 1
        set argv $argv[2..-1]
    end

    switch "$command"
        case rehash shell
            eval (rbenv "sh-$command" $argv)
        case '*'
            command rbenv "$command" $argv
    end
end
