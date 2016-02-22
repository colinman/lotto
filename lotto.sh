while getopts "u:" opt; do
    case $opt in
	u)  url=$OPTARG
            ;;
    esac
done

numbers=$(curl www.powerball.com | grep "balls" -A 15 | sed -e 's/<[^<]*>//g' | sed -e 's/Winning Numbers//g' | sed -e 's/ //g' | sed '/^\s*$/d' | perl -e 'use JSON; @in=grep(s/\r\n$//, <>); print encode_json(\@in)."\n";')
curl -X POST -d $numbers $url
