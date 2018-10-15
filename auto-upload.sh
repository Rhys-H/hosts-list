mv /etc/pihole/HostList.txt ~/Projects/DNS_Adlist/.

split HostList.txt -a 1 --numeric-suffixes=1 --additional-suffix=.txt -n 5 HostList

rm HostList.txt

git add HostList*.txt

git commit -m "Weekly automated adlists update"

git push
