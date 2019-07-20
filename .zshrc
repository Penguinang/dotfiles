###################################################################################################################################################
# Uncomment this to use default config 
#source /usr/share/oh-my-zsh/zshrc

export ZSH=~/.oh-my-zsh
###################################################################################################################################################
# zsh themes setting
#ZSH_THEME="agnoster"
#source /home/penguinang/.oh-my-zsh/custom/themes/agnoster/agnoster.zsh-theme

#ZSH_THEME="powerlevel9k"
#source  ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme

#ZSH_THEME="windows"
#source ~/.oh-my-zsh/custom/themes/windows/windows.zsh-theme 

#ZSH_THEME="bullet-train"
#source ~/.oh-my-zsh/custom/themes/bullet-train/bullet-train.zsh-theme 

#ZSH_THEME="classyTouch"
#source ~/.oh-my-zsh/custom/themes/classyTouch/classyTouch.zsh-theme 

ZSH_THEME="powerline"
#POWERLINE_RIGHT_B="time"
#POWERLINE_RIGHT_A="date"

#source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh 

# zsh setting
#DISABLE_AUTO_UPDATE="true"


###################################################################################################################################################
# Plugins
plugins=(git bundler rake ruby sudo extract archlinux zsh-autosuggestions zsh-syntax-highlighting zsh-completions)


###################################################################################################################################################
# Plugin Settings 
source /home/penguinang/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting.config.zsh


###################################################################################################################################################
# Settings
# command 'find' bug fix 
setopt no_nomatch
export VISUAL="vim"

##################################################################################################################################################
# Paths

export PATH=$PATH:/usr/java/jdk1.8.0_144/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/penguinang/.vim/bundle/gdbmgr/gdbmgr/src
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk


##################################################################################################################################################
# Alias
# login ruijie
alias rjs='/home/penguinang/localScript/rjsupplicant/login.sh'

# create wifi hotpot 'PRIVATE_STRING_HUST_WIRELESS'
alias ap='sudo create_ap wlp3s0 enp0s25 ****************  *******'

# login my vps
alias login='ssh penguinang@myserver'
alias psg='ps -ef |grep '
alias pacman_installed='expac -s -H M "%-30n %m"'
alias pacman_installed_sorted='expac -H M "%m\t%n" | sort -h '

pacman_disowned_func(){
    tmp=${TMPDIR-/tmp}/pacman-disowned-$UID-$$
    db=$tmp/db
    fs=$tmp/fs

    mkdir "$tmp"
    trap  'rm -rf "$tmp"' EXIT

    pacman -Qlq | sort -u > "$db"

    sudo find /bin /etc /lib /sbin /usr \
        ! -name lost+found \
        \( -type d -printf '%p/\n' -o -print \) | sort > "$fs"

    comm -23 "$fs" "$db"
}
alias pacman_disowned='pacman_disowned_func'

function gcc_compile(){
    if [[ $1 == *".cpp" ]]
    then
        g++ $* -o `basename $1 .cpp`.out -g
    else
        gcc $* -o `basename $1 .c`.out -g
    fi
}

alias gcom=gcc_compile

##################################################################################################################################################
# Make oh-my-zsh valid
source /usr/share/oh-my-zsh/oh-my-zsh.sh

##################################################################################################################################################
# Init On Login


##################################################################################################################################################
# Wine

# close wine debug message
export WINEDEBUG=-all

