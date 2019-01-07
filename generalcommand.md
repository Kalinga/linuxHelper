Prevent cluttered error message: -print -o -path ~/.gvfs -prune during search

[X] Check Current Ubuntu  Version
`lsb_release -a`
LSB: Linux Standard Base

[X] Check Current System Information
`uname -a`

[X] Machine hardware architecture
`arch` | `uname -m`

* sed is wonderful and very much helpful at certain times
`echo xxy yyx | sed 's/x/c/g'`
`sed '' tmp.txt` similar to cat
`sed -n 's/foo/bar/; p'` == `sed -n -e 's/foo/bar/' -e 'p'`
`sed -n '5,10p'` print lines between 5-10 including both
`sed '/foo/,/bar/d'` Delete range of lines inclusive of matched lines

`h`: The command for copying the current pattern space to the hold buffer is h.
`g`: The command for copying the hold buffer back to the pattern space is g.
`x`: The command for exchanging the hold buffer and the pattern space is x. 
 
 * Number the lines in a file
 `sed = file | sed 'N; s/\n/: /'`
 `sed -n  -e 's/FirstWord.*$/A new text for the entire Line/;p'  path/to/yourfile`
 [X] Use '"$1"' for bash command line variable substitution in the sed

Add a new user to the sudo group
root# gpasswd -a <demo_user> sudo

List of services running in Ubuntu
service --status-all

Authorization related failure logs could be found from:
/var/log/auth.log

Check a perticular port usage
lsof -i :80 
sudo fuser -k 80/tcp 

Clean cache and make some space
sudo apt clean

See all the services running on Ubuntu
Most of them are started at the boot time
service --status-all

To find out all services that have been run at startup:
systemctl list-units --type service

To disable a service
sudo systemctl disable cups-browsed.service
sudo systemctl disable jenkins.service

Useful options for find command
where which what
iname
maxdepth
not name
!
o
-type f
-type d
-mtime
-atime
-cmin
-mmin
-type f -empty
-type d -empty
find . -exec ls -ld {} \;

find -type d -name "kali"  -print0 -exec ./kali_compress_backup.sh {} \; | tee compress.log
find -type d -name "kali.org"   | xargs rm -rf
find . -maxdepth 1 -type d -name "kalinga_*" -exec mv '{}' dest/ \;
grep -irn "Kali" --exclude=\*.{out,in,sh}

find file size then sum of the size
find -name test_file.log* | xargs du -h | sed 's/\ / /' |awk '{print$1}' | grep G | cut -c1-3 | awk 'NF{sum+=$1} END {print sum}'
