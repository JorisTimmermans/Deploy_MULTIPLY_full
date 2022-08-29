export rooting_dir='/home/test2'
export installs_dir=$rooting_dir'/installs'
export software_dir=$rooting_dir'/software'
export data_dir=$rooting_dir'/data'
export config_dir=$rooting_dir'/.multiply'

################################
#### Setup
################################
echo 'Creating directory for downloading Installation packages...'

# create file structure
mkdir $installs_dir
mkdir $software_dir
mkdir $config_dir
mkdir $data_dir
mkdir $data_dir'/working_dirs'
mkdir $data_dir'/archive'
mkdir $data_dir'/auxiliary'

#### fill directory with auxiliary data
unzip archive/models.zip -d $data_dir'/auxiliary/models'
unzip archive/priors.zip -d $data_dir'/auxiliary/priors'

################################
#### Install Miniconda and auxiliary software
################################
bash install_miniconda.sh

bash install_sentinelhub.sh

# only required when working with sentinel-1 data
# bash install_snap.sh

################################
#### Install and Activate Multiply-platform environment
################################
bash install_environments.sh

################################
#### Download MULTIPLY individual modules
################################
echo 'Downloading and installing MULTIPLY modules...'
bash install_download_multiply_modules.sh
bash install_setup_multiply_modules.sh

echo 'Setting up MULTIPLY Configuration...'
unzip archive/multiply_configuration.zip -d $config_dir

echo 'setting up scripts'
ln -s $software_dir'/multiply-ui/multiply_ui/server/resources/scripts' $rooting_dir'/scripts'
#ln -s $software_dir'/multiply-ui/notebooks' $rooting_dir'/notebooks'
cp -R notebooks $rooting_dir'/notebooks'
chmod +Rx $rooting_dir'/notebooks'

################################
#### modify files to update paths
####   hint: use following command to search for 'old paths' 
####   "grep -rnw '/home/joris/software/multiply-ui/' -e '/home/jtimmer1/software"
################################
bash install_post.sh

##################
cp launch.sh $rooting_dir
chmod +x $rooting_dir'/launch.sh'

echo 'Finished installation'
echo 'To launch Multiply run "./launch.sh" in the terminal'

#################
#bash install_configure_jupyter.sh


##################
##### STUFF TO DO for MULTIPLY visualisation
#~/software/MULTIPLYVisualisation/src/MultiplyVIS.py??

