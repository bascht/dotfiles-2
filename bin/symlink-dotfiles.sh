#!/bin/bash
# ------------------------------------------------------------------------------
DOTFILES="$HOME/dotfiles"
DATAFILES="$HOME/datafiles"
# ------------------------------------------------------------------------------

# TODO use a loop :)

#-------------------------------------------------------------------------------
# DOTFILES
#-------------------------------------------------------------------------------

cd
ln -fsT $DOTFILES/abcde.conf .abcde.conf
ln -fsT $DOTFILES/ackrc .ackrc
ln -fsT $DOTFILES/agignore .agignore
ln -fsT $DOTFILES/ctags .ctags
ln -fsT $DOTFILES/cmus .cmus
ln -fsT $DOTFILES/colortail .colortail
ln -fsT $DOTFILES/gitconfig .gitconfig
ln -fsT $DOTFILES/gitignore .gitignore
ln -fsT $DOTFILES/gtk-bookmarks .gtk-bookmarks
ln -fsT $DOTFILES/gtkrc-2.0 .gtkrc-2.0
ln -fsT $DOTFILES/lynxrc .lynxrc
ln -fsT $DOTFILES/my.cnf .my.cnf
ln -fsT $DOTFILES/myclirc .myclirc
ln -fsT $DOTFILES/newsbeuter .newsbeuter
ln -fsT $DOTFILES/pandoc .pandoc
ln -fsT $DOTFILES/php_cs .php_cs
ln -fsT $DOTFILES/fonts.conf .fonts.conf
ln -fsT $DOTFILES/synergy.conf .synergy.conf
ln -fsT $DOTFILES/tigrc .tigrc
ln -fsT $DOTFILES/urlview .urlview
ln -fsT $DOTFILES/vim .vim
ln -fsT $DOTFILES/vim/vimrc .vimrc
ln -fsT $DOTFILES/vim/vimrc.minimal .vimrc.minimal
ln -fsT $DOTFILES/wgetrc .wgetrc
ln -fsT $DOTFILES/xmodmap .Xmodmap
ln -fsT $DOTFILES/xscreensaver .xscreensaver
ln -fsT $DOTFILES/zsh .zsh
ln -fsT $DOTFILES/zsh/zshrc .zshrc

mkdir -p ~/.config
cd ~/.config
ln -fs $DOTFILES/awesome
ln -fs $DOTFILES/newsbeuter
ln -fsT $DOTFILES/roxterm roxterm.sourceforge.net
#ln -fsT $DOTFILES/thunar Thunar

#mkdir -p ~/.config/htop
#cd ~/.config/htop
#ln -fs $DOTFILES/htoprc

mkdir -p ~/.config/git
cd ~/.config/git
ln -fs $DOTFILES/gitattributes attributes

mkdir -p ~/.config/kupfer
cd ~/.config/kupfer
ln -fs $DOTFILES/kupfer.cfg

mkdir -p ~/.config/ranger
cd ~/.config/ranger
ln -fs $DOTFILES/ranger/rc.conf
ln -fs $DOTFILES/ranger/scope.sh

mkdir -p ~/.config/fontconfig
cd ~/.config/fontconfig
ln -fs $DOTFILES/fonts.conf

mkdir -p ~/.local/share
cd ~/.local/share
ln -fs $DOTFILES/applications

mkdir -p ~/.w3m
cd ~/.w3m
ln -fs $DOTFILES/w3m/keymap

#-------------------------------------------------------------------------------
# DATAFILES
#-------------------------------------------------------------------------------

cd
mkdir -p $DATAFILES
mkdir -p $DATAFILES/irclogs
mkdir -p $DATAFILES/irssi
mkdir -p $DATAFILES/mongodb
mkdir -p $DATAFILES/mysql
mkdir -p $DATAFILES/newsbeuter
mkdir -p $DATAFILES/openvpn
mkdir -p $DATAFILES/zsh/history
ln -fs $DATAFILES/aspell/.aspell.de.prepl
ln -fs $DATAFILES/aspell/.aspell.de.pws
ln -fsT $DATAFILES/caff/caffrc .caffrc
ln -fsT $DATAFILES/irclogs .irclogs
ln -fsT $DATAFILES/irssi .irssi
ln -fs $DATAFILES/lynx/lynx_bookmarks.html
ln -fsT $DATAFILES/mongodb/dbshell .dbshell
ln -fsT $DATAFILES/mysql/mysql_history .mysql_history
ln -fsT $DATAFILES/openvpn .openvpn
ln -fsT "$DATAFILES/ssh-`hostname`" .ssh
ln -fsT $DATAFILES/vocabularylist .vocabularylist
touch $DATAFILES/zsh/_aliases
touch $DATAFILES/zsh/_functions
touch $DATAFILES/zsh/_misc
touch $DATAFILES/zsh/_options
touch $DATAFILES/zsh/_zshrc

cd ~/.config
ln -fsT $DATAFILES/cmusfm cmus

mkdir -p ~/.config/easytag
cd ~/.config/easytag
ln -fs $DATAFILES/easytagrc

#newsbeuter
cd ~/.local/share
ln -fsT $DATAFILES/newsbeuter newsbeuter

# vim private files
cd $DOTFILES/vim
mv undo-dir /tmp/
ln -s $DATAFILES/vim/undo-dir

mkdir -p ~/dev/fs/radiorecorder/config
cd ~/dev/fs/radiorecorder/config
ln -fs $DATAFILES/radiorecorder/broadcasts
ln -fs $DATAFILES/radiorecorder/record
ln -fs $DATAFILES/radiorecorder/stations

#-------------------------------------------------------------------------------
# BIN
#-------------------------------------------------------------------------------
mkdir -p ~/bin

#-------------------------------------------------------------------------------
# SSH Permissions
#-------------------------------------------------------------------------------
cd ~/.ssh
chmod 600 *
touch authorized_keys
chmod 644 authorized_keys

