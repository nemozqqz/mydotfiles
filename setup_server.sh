
#up to date
apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get install update-manager-core
do-release-upgrade

#zqqz
adduser zqqz
usermod -aG sudo zqqz
mkdir /home/zqqz/.ssh
echo "zqqz ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/zqqz
cat "zqqz - core unlimited" >> /etc/security/limits.conf

#pkgs
apt-get install fail2ban tmux iptables-persistent netfilter-persistent vim-nox curl ipython 

##vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


cat <<END >>/home/zqqz/.vimrc

call plug#begin('~/.vim/plugged')
 Plug 'https://github.com/Shougo/neocomplete.vim'
 Plug 'https://github.com/vim-scripts/Mark--Karkat'
 Plug 'https://github.com/scrooloose/nerdtree'
 Plug 'https://github.com/brookhong/cscope.vim'
 Plug 'https://github.com/mkitt/tabline.vim'
call plug#end()

"let g:jedi#completions_command = "<C-N>"

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set backspace=indent,eol,start
set nocompatible
set number
"set autochdir
set showmatch
set showcmd
set ruler
set autoindent

filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab

syntax enable
set t_Co=256
colorscheme desert
"colorscheme molokai
set synmaxcol=512
set background=dark

set shell=bash

set wildmenu
set wildmode=longest:full,full

END



##bash

cat <<EOF >>/home/zqqz/.bashrc
alias grep='grep -i --color'
cdl() { cd "$@" && pwd ; ls -alh; }
alias ..='cd ..'
alias rm='rm -i'
alias mv='mv -i'

export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[32m\]\u@\h\[\033[00m\] \[\033[34m\]\w \$\[\033[00m\]"

# Have less display colours
# from: https://wiki.archlinux.org/index.php/Color_output_in_console#man
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline

EOF
