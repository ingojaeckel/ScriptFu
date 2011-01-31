mensa() {
  wget -q --no-verbose -O - http://www.studentenwerk-potsdam.de/116 | egrep -A1 "text[1234]" | sed -e 's/<[^>]*>//g' -e 's/[ 	][ 	]*/ /g' -e '/Aktion:.*\r/d'| head -n 4
}
