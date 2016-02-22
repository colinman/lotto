numbers=$(curl www.powerball.com | grep "balls" -A 10 | sed -e 's/<[^<]*>//g' | sed -e 's/Winning Numbers//g' | sed -e 's/ //g' | sed '/^\s*$/d' | perl -e 'use JSON; @in=grep(s/\r\n$//, <>); print encode_json(\@in)."\n";')
echo $numbers
