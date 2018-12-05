useradd -d /opt/teamspeak3-server -m teamspeak3-user
cd /tmp
ts_package=teamspeak3-server_linux_amd64-3.5.0.tar.bz2
ts_dir=teamspeak3-server_linux_amd64
ts_download_url=https://files.teamspeak-services.com/releases/server/3.5.0/$ts_package
wget $ts_download_url
tar -vxjf $ts_package
mv $ts_dir/* /opt/teamspeak3-server/
chown teamspeak3-user:teamspeak3-user /opt/teamspeak3-server -R
rm -rf $ts_package $ts_dir
