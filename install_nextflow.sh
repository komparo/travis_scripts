mkdir $HOME/nextflow
pushd $HOME/nextflow
wget -qO- get.nextflow.io | bash
export PATH=$HOME/nextflow:$PATH
popd
