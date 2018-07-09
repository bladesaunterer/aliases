# Move to solutions directory from anywhere
alias sol="cd ~/Projects/solutions"
 
# rgrav
alias rgrav-combined="rgrav deploy -R unison_frontend:0 -R unison_backend:0 -R unison_haproxy:0 -R connect:0 -R consumer_frontend:0 -R consumer_haproxy:0 -p ec2"
alias rgrav-split="rgrav deploy -R frontend:0 -R backend:0 -R connect:0 -R haproxy:0 -R rhapsody_ohop:0 -R empi:0 -R consumer_frontend:0 -R consumer_haproxy:0 -p ec2"
alias rgrav-hie="rgrav deploy -R connect:0 -R rhapsody_ohop:0 -R rhapsody_sitespecific:0 -p ec2"
 
# Deploys
alias pathways="./resources/scripts/pathway_enable_care_coordination && ./resources/scripts/pathway_enable_transition_of_care && ./resources/scripts/example_forms_enable_consult"
alias slurp_move="./resources/scripts/pathway_slurp_move_care_coordination && ./resources/scripts/pathway_slurp_move_transition_of_care && ./resources/scripts/example_forms_slurp_move_consult"
 
# Auckland jump host
alias jump="ssh $USER@graviton-jump-host-auckland"
 
# Navigate out of directories quickly
alias ..="cd .."
alias ...="cd ../.."
 
alias c="clear"  
alias h="history"
# git
alias g='git'
alias gb='git branch'
alias gl='git log --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias gs='git status'
alias gss='git status --short'
alias gd='git diff'
alias gp='git pull'
alias git pull='git pull --rebase'
alias gf='git fetch'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gcd='git checkout development'
alias greset='git add --all && git reset --hard HEAD && git clean -fd'
alias gpu='git rev-parse --abbrev-ref HEAD | xargs git push -u origin'
 
# ls
# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi
 
# List all files colorized in long format
alias l="ls -lhF ${colorflag}"
 
# List all files colorized in long format, including dot files
alias ll="ls -lAhF ${colorflag}"
alias la="ls -lAhF ${colorflag}"
 
# Always use color output for `ls`
alias ls="command ls -h ${colorflag}"
 
# Export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
 
# Capistrano
alias cap="bundle exec cap"

PROJECTDIR="~/Projects"
ALIASDIR=$PROJECTDIR+'/aliases/.aliases.sh'

alias aliases="code ${ALIASDIR}"
alias sshconfig="code ~/.ssh/config"
alias zshrc="code ~/.zshrc"
alias projects="cd ${PROJECTDIR}"
alias cheatsheet="less .cheatsheet"
alias rgrav-unison-scripts="rgrav script publish_forms run_db_grants load_demo_users load_demo_data load_demo_relationships"
