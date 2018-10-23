#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Aliases
## Modified commands
# alias diff='colordiff'              # requires colordiff package
alias vi='nvim'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'

## New commands
alias paytoken='curl -v https://api.sandbox.paypal.com/v1/oauth2/token \
-H "Accept: application/json" \
-H "Accept-Language: en_US" \
-u "AZADVw9rZ471Tq9A_vsCU8C2wxRH92naBS_a26L0HG_pVod-S_MV0XAliZ3kNhLwe7Pgv29vWsPs_UEI:EJWbpXmJnQDHB4ZD8nLqN5Fj4BXTGwMr_bVlRZGnukMAm6b2z5c9qhEXTbyfdwnnD_OVWXrqjHnCr4r9" \
-d "grant_type=client_credentials"'
alias scpliq='scp -r -i /opt/lampp/htdocs/klasrun-ver001.pem /opt/lampp/htdocs/Liquidation/ ec2-user@ec2-13-57-188-159.us-west-1.compute.amazonaws.com:/var/www/html/Liquidation'
alias scppay='scp -r -i /opt/lampp/htdocs/klasrun-ver001.pem /opt/lampp/htdocs/PayPal-API/ ec2-user@ec2-13-57-188-159.us-west-1.compute.amazonaws.com:/var/www/html/PayPal-API'
alias scpamz='scp -r -i /opt/lampp/htdocs/klasrun-ver001.pem /opt/lampp/htdocs/AmazonMWS/ ec2-user@ec2-13-57-188-159.us-west-1.compute.amazonaws.com:/var/www/html/AmazonMWS/'
alias scpmws='scp -r -i /opt/lampp/htdocs/klasrun-ver001.pem /opt/lampp/htdocs/AmazonMWS/MarketplaceWebService ec2-user@ec2-13-57-188-159.us-west-1.compute.amazonaws.com:/var/www/html/AmazonMWS'
alias scppro='scp -r -i /opt/lampp/htdocs/klasrun-ver001.pem /opt/lampp/htdocs/AmazonMWS/MarketplaceWebServiceProducts ec2-user@ec2-13-57-188-159.us-west-1.compute.amazonaws.com:/var/www/html/AmazonMWS'
alias scpfba='scp -r -i /opt/lampp/htdocs/klasrun-ver001.pem /opt/lampp/htdocs/AmazonMWS/FBAInboundServiceMWS ec2-user@ec2-13-57-188-159.us-west-1.compute.amazonaws.com:/var/www/html/AmazonMWS'
alias scpbook='scp -r -i /opt/lampp/htdocs/klasrun-ver001.pem /opt/lampp/htdocs/BooksMWS/FBAInboundServiceMWS ec2-user@ec2-13-57-188-159.us-west-1.compute.amazonaws.com:/var/www/html/BooksMWS'
alias ssk='ssh -i /opt/lampp/htdocs/klasrun-ver001.pem ec2-user@ec2-13-57-188-159.us-west-1.compute.amazonaws.com'
alias pb='curl -F c=@- https://ptpb.pw'
alias ptpb='curl -F c=@- https://ptpb.pw'
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'         # requires an argument
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias pgg='ps -Af | grep'           # requires an argument
alias ..='cd ..'

# Privileged access
# if (( UID != 0 )); then
#     alias sudo='sudo '
#     alias scat='sudo cat'
#     alias svim='sudoedit'
#     alias root='sudo -i'
#     alias reboot='sudo systemctl reboot'
#     alias poweroff='sudo systemctl poweroff'
#     alias update='sudo pacman -Su'
#     alias netctl='sudo netctl'
# fi

## ls
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -a'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

## git
alias pull='git pull'
alias push='git push'
alias commit='git commit -m'        # requires commit message
alias add='git add'

## cd
alias camz='cd /opt/lampp/htdocs/AmazonMWS'

## Safety features
# alias cp='cp -i'
# alias mv='mv -i'
# alias rm='rm -I'                    # 'rm -i' prompts for every file
# # safer alternative w/ timeout, not stored in history
# alias rm=' timeout 3 rm -Iv --one-file-system'
# alias ln='ln -i'
# alias chown='chown --preserve-root'
# alias chmod='chmod --preserve-root'
# alias chgrp='chgrp --preserve-root'
# alias cls=' echo -ne "\033c"'       # clear screen for real (it does not work in Terminology)

## Make Bash error tolerant
# alias :q=' exit'
# alias :Q=' exit'
# alias :x=' exit'
# alias cd..='cd ..'

## Not entirely sure what this is
PS1='[\u@\h \W]\$ '
