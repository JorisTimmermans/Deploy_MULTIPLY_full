#conda activate multiply-platform

#########################################
echo 'installing SIAC atmospheric correction'
cd $software_dir'/atmospheric_correction'
python setup.py develop

########################################
echo 'installing BRDF_descriptors'
cd $software_dir'/BRDF_descriptors'
python setup.py install

#########################################
echo 'installing calvalus-instances'
cd $software_dir'/calvalus-instances'
#no installation necessary

#########################################
echo 'installing data access component'
cd $software_dir'/data-access'
python setup.py develop

#########################################
echo 'installing inference engine'
cd $software_dir'/inference-engine'
python setup.py develop


#########################################
echo 'installing kaska inference'
cd $software_dir'/kaska'
python setup.py develop


#########################################
echo 'installing kafka inference'
cd $software_dir'/KaFKA-InferenceEngine'
python setup.py develop

#########################################
echo 'installing multiply core module'
cd $software_dir'/multiply-core'
python setup.py develop

#########################################
echo 'installing multiply post processing packages'
cd $software_dir'/multiply-post-processing'
python setup.py develop

#########################################
echo 'installing the prior engine (for usage only with the kafka inference'
cd $software_dir'/multiply-prior-engine'
python setup.py develop

#########################################
echo 'installing the multiply visualisation module (optional)'
cd $software_dir'/MULTIPLYVisualisation'
python setup.py develop

#########################################
echo 'installing the multiply sar preprocessing (optional when using only s2 data'
cd $software_dir'/sar-pre-processing'
python setup.py develop

#########################################
echo 'installing VM support'
cd $software_dir'/vm-support'
python setup.py develop



#########################################
echo 'installing the multiply user interface'
cd $software_dir'/multiply-ui'
jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.38.1
jupyter labextension install jupyter-leaflet@0.10.4

cd js
npm install
cd ..
jupyter labextension install js

python setup.py develop
#########################################
cd ..
