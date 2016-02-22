sudo apt-get install build-essential git
sudo cpan JSON
git clone https://github.com/colinman/lotto.git
- Add to crontab:
*/5 20-23 * * 3,6 /home/colinman/lotto/lotto.sh -u [ENDPOINT URL]
