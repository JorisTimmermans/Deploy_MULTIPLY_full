echo 'Installing Miniconda...'
wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh -P $installs_dir
chmod +x $installs_dir/Miniconda3-py37_4.10.3-Linux-x86_64.sh
bash $installs_dir/Miniconda3-py37_4.10.3-Linux-x86_64.sh -b -p $software_dir'/miniconda3'
eval "$($software_dir'/miniconda3/condabin/conda' shell.bash hook)"
conda init
source ~/.bashrc
