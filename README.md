# update-trackers

Is a script to allow update of torrent trackers within transmission daemon using transmission-remote. 
It uses the tracker list provided by [https://github.com/ngosang/trackerslist](https://github.com/ngosang/trackerslist) (from file trackers_best_ip.txt).
It only apply to Unknown status torrents (ie. not done).

# usage

1. Download the script
2. Edit the file to provide proper credentials to access transmission daemon (you can find out what they are in **/etc/transmission-daemon/settings.json** under _rpc-username_ and _rpc-password_)
```sh
transmissionPass="<username>:<password>"
```
3. Change the tracker file if you want
```sh
trackers=$(curl https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_best_ip.txt)
```
4. Provide proper permissions
5. Execute script

Feel free to contact me if you have any questions.
