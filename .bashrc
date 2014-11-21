# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
    . /usr/share/git-core/contrib/completion/git-prompt.sh
    . /usr/share/git-core/contrib/completion/git-completion.sh
fi

source /home/sgoodman/.hadoop_rc

# User specific aliases and functions
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1='[\u@\h \W$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)")]\$ '

export JAVA_HOME=/usr/java/default
export M2_HOME=/home/sgoodman/apache-maven-3.1.0
export ZOOKEEPER_HOME=/opt/zookeeper-3.4.5
export HADOOP_HOME=/usr/lib/hadoop-hdfs
export PATH=$JAVA_HOME/bin:$M2_HOME/bin:$ZOOKEEPER_HOME/bin:$HADOOP_HOME/bin:$PATH

alias sshuttle-mantech='sshuttle -H -r sgoodman@mtdev.eitccorp.com:8001 192.168.150.0/24 -v -x 10.0.0.0/24'
alias sshuttle-eitc='sshuttle -H -r sgoodman@192.168.70.80 192.168.8.0/24 -v -x 10.0.0.0/24'
alias eitcvpn='sudo openvpn --config /home/sgoodman/openvpn/pfsense-udp-1194-sgoodman.ovpn --auth-nocache --auth-user-pass /home/sgoodman/openvpn/up'
alias crlf='find . -not -type d -exec file "{}" ";" | grep CRLF'

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/sgoodman/.gvm/bin/gvm-init.sh" ]] && source "/home/sgoodman/.gvm/bin/gvm-init.sh"

export PATH=/home/sgoodman/sencha-cmd/Sencha/Cmd/5.0.1.231:$PATH

export SENCHA_CMD_3_0_0="/home/sgoodman/sencha-cmd/Sencha/Cmd/5.0.1.231"
