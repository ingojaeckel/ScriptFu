fontsize=10
smaller() {
  fontsize=`expr $fontsize - 2`
  echo -e '\e]710;'xft:Terminus-${fontsize}'\007'
}
bigger() {
  fontsize=`expr $fontsize + 2`
  echo -e '\e]710;'xft:Terminus-${fontsize}'\007'
}

