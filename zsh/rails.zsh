#########
# RAILS #
#########

alias h=heroku

# Rake
alias migrate="be rake db:migrate db:test:prepare"
alias remigrate="be rake db:migrate && be rake db:migrate:redo && be rake db:schema:dump db:test:prepare"
alias rrg="be rake routes | grep"

# Database
alias db-reset="be rake db:drop db:create && migrate"
