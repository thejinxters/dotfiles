
#connect to database
alias db="mysql -u dev -puSF5k4RN72L8dhc"

#tails log
alias log="clear;tail -f -n 30 /var/log/httpd/dev.customerparadigm.com-error_log | grep --line-buffered $(whoami)"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
