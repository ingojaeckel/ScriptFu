= bash functions =

Source these files to use them within bash scripts or on commandline:

# source additional commands
for s in ${HOME}/.bashrc.d/*.sh ; do
        test -r $s && . $s
done
