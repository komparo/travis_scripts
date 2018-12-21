mkdir $HOME/nextflow
wget -qO- get.nextflow.io | bash
mv nextflow $HOME/nextflow
export PATH=$HOME/nextflow:$PATH
