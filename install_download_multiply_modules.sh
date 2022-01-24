# the variable $sofware_dir is inherented from 'main_install.sh', from which 
# multiply_download_modules.sh was run. If this file was run stand-alone, define the variable
# by un-commenting the line below and modifying it to the correct path
# export software_dir='/home/joris/software'

################################
#### create directory (if does not exist)
################################
mkdir $software_dir

################################
#### Use the local package-repository
################################
# unzip archive/multiply_modules_max.zip -d $software_dir 

################################
#### Alternatively, download the majority from github
####  please note some of the package's were modified from their github variants to get 
####  the system to work. Hence, these are within the local  to be installed from the local package-repo
################################
# unzip multiply_modules_min.zip -d $software_dir

unzip multiply_modules_min1.zip -d $software_dir
unzip multiply_modules_min2.zip -d $software_dir
unzip multiply_modules_min3.zip -d $software_dir
unzip multiply_modules_min4.zip -d $software_dir

git clone https://github.com/multiply-org/atmospheric_correction.git $software_dir'/atmospheric_correction'
git clone https://github.com/multiply-org/inference-engine.git $software_dir'/inference_engine'
git clone https://github.com/multiply-org/KaFKA-InferenceEngine.git $software_dir'/kafka'
git clone https://github.com/multiply-org/kaska.git $software_dir'/kaska'
git clone https://github.com/multiply-org/prior-engine.git $software_dir'/multiply_prior_engine'
git clone https://github.com/multiply-org/multiply-ui.git $software_dir'/multiply_ui'
git clone https://github.com/multiply-org/MULTIPLYVisualisation.git $software_dir'/MULTIPLYVisualisation'
git clone https://github.com/multiply-org/sar-pre-processing.git  $software_dir'/sar_pre-processing'

# not yet in the repository, but with github
git clone https://github.com/bcdev/calvalus-instances $software_dir'/calvalus-instances'
