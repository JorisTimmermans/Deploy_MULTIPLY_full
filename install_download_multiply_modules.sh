# the variable $sofware_dir is inherented from 'main_install.sh', from which 
# multiply_download_modules.sh was run. If this file was run stand-alone, define the variable
# by un-commenting the line below and modifying it to the correct path
# export software_dir='/home/joris/software'

################################
#### create directory (if does not exist)
################################
mkdir $software_dir

################################
#### Get all original modules from from github
################################
# git clone https://github.com/multiply-org/inference-engine.git $software_dir'/inference_engine'
# git clone https://github.com/multiply-org/KaFKA-InferenceEngine.git $software_dir'/kafka'
# git clone https://github.com/multiply-org/kaska.git $software_dir'/kaska'
# git clone https://github.com/multiply-org/prior-engine.git $software_dir'/multiply_prior_engine'
# git clone https://github.com/multiply-org/multiply-ui.git $software_dir'/multiply_ui'
# git clone https://github.com/multiply-org/MULTIPLYVisualisation.git $software_dir'/MULTIPLYVisualisation'
# git clone https://github.com/multiply-org/sar-pre-processing.git  $software_dir'/sar_pre-processing'

################################
####  please note some of the package's were modified from their original multiply.org versions to get 
####  the system to work. Hence, these are within the local  to be installed from the local package-repo
################################

# git clone https://github.com/JorisTimmermans/atmospheric_correction.git $software_dir'/atmospheric_correction'
# git clone https://github.com/JorisTimmermans/BRDF_descriptors.git $software_dir'/BRDF_descriptors'
# git clone https://github.com/JorisTimmermans/data-access.git $software_dir'/data-access'
# git clone https://github.com/JorisTimmermans/multiply-core.git $software_dir'/multiply-core'
# git clone https://github.com/JorisTimmermans/multiply-ui.git $software_dir'/multiply-ui'
# git clone https://github.com/JorisTimmermans/vm-support.git $software_dir'/vm-support-ui'

################################
####  external modules
################################
# git clone https://github.com/bcdev/calvalus-instances $software_dir'/calvalus-instances'
