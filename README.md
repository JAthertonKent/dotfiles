Install configured bundles:

Launch vim, run :BundleInstall 

Installing requires Git and triggers Git clone for each configured repo to ~/.vim/bundle/.

If vim tells you that :BundleInstall is not a command, consider removing and pulling new Vundle:

 $ rm -Rf ~/.vim/bundle/vundle

 $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
