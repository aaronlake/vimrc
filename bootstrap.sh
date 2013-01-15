#################################
# copy from https://github.com/carlhuda/janus/blob/master/bootstrap.sh

function die()
{
    echo "${@}"
    exit 1
}

# Add <strong>.old</strong> to any existing Vim file in the home directory
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do
  if [[ ( -e $i ) || ( -h $i ) ]]; then
    echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
  fi
done
#################################

git clone --recursive git://github.com/aaronlake/vimrc.git $HOME/.vim \
    || die "Could not clone the repository to ${HOME}/.vim"

echo "Link vim configuration files"
ln -s $HOME/.vim/vimrc $HOME/.vimrc
ln -s $HOME/.vim/gvimrc $HOME/.gvimrc

echo "Install vim-javascript"
cd $HOME/.vim/bundle/javascript/
rake install

echo "Install successfully."
