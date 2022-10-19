git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' | awk $'{print " \uE0A0 "$1" "}'
