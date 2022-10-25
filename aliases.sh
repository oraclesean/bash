# Mac wrap/nowrap aliases
alias wrap='tput rmam'
alias nowrap='tput smam'

# Docker aliases
alias dangimg='docker images -f dangling=true'
alias dangvol='docker volume ls -f dangling=true'
alias dp="docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}' | awk 'NR<2{print \$0; next}{print \$0 | \"sort\"}'"
alias dpm='docker ps -a -s=true --no-trunc=true --format "table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Size}}\t{{.Mounts}}\t{{.Status}}" | sort'
alias dps="docker ps -a --format 'table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}' | awk 'NR<2{print \$0; next}{print \$0 | \"sort\"}'"
alias dpv='docker ps -a -s=true --no-trunc=true --format "table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Size}}\t{{.Mounts}}\t{{.Status}}"'
alias images='docker images | awk '\''NR<2{print $0; next}{print $0 | "sort"}'\'''
#alias images="docker images | awk 'NR<2{print \$0; next}{print \$0 | \"sort\"}'"

# Linux CLI aliases
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
