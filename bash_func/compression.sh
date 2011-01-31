ex () {
    if [ -f $1 ] ; then
	type=$(file -0 $1|cut -d " " -f2);
        case $type in
            bzip2)       tar xjf $1 ;;
            gzip)        tar xzf $1 ;;
            rar)         unrar e $1 ;;
            zip)         unzip $1   ;;
            7z)          7z x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
