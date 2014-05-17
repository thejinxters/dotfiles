
#connect to database
alias db="mysql -u dev -puSF5k4RN72L8dhc"

#tails log
alias log="clear;tail -f -n 30 /var/log/httpd/dev.customerparadigm.com-error_log | grep --line-buffered $(whoami)"

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin 
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
