echo 'Downloading and installing auxiliary software packages...'
wget http://step.esa.int/downloads/5.0/installers/esa-snap_sentinel_unix_5_0.sh -P $installs_dir
chmod +x $installs_dir'/esa-snap_sentinel_unix_5_0.sh'
bash $installs_dir/esa-snap_sentinel_unix_5_0.sh -q -dir $software_dir'/snap'
