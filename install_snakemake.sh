# based on https://conda.io/docs/user-guide/tasks/use-conda-with-travis-ci.html

# set default python version if not present
TRAVIS_PYTHON_VERSION=${TRAVIS_PYTHON_VERSION:=3.6}

wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh;
bash miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
hash -r
conda config --set always_yes yes --set changeps1 no
conda update -q conda

conda info -a
conda config --add channels defaults
conda config --add channels conda-forge
conda config --add channels bioconda
conda create -q -n snakemake python=$TRAVIS_PYTHON_VERSION snakemake

source activate snakemake
