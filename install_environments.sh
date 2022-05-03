source $software_dir'/miniconda3/etc/profile.d/conda.sh'
echo 'Installing and Activating Miniconda environment for the MULTIPLYL-platform...'
conda env create -f environments/environment_multiply_platform.yml
conda env create -f environments/environment_multiply_ui.yml
conda activate multiply-platform

echo 'conda activate multiply-platform' >> ~/.bashrc
source ~/.bashrc
# --- not working yet ---!!
# conda env create -f environment_multiply_vis.yml
