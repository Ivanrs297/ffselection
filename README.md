# Fast supervised feature selection framework

Datasets with high dimensionality represent a challenge to existing learning methods. The presence of irrelevant and redundant features in a dataset can degrade the performance of the models inferred from it. In large datasets, manual management of features tends to be impractical. This frameworks allows to remove redundant and irrelevant features in supervised datasets.

<img src="https://github.com/ivangarcia88/ffselection/blob/assets/0.png" width="500">

# Docker

To build the docker image:

```sh
$ docker build -t ffselection .
```

To start container:

```sh
$ docker run -it ffselection
```

Then, follow the Compilation instructions as `sudo` with the password for sudo user *docker*: **docker**

# Compilation

To install requirements and compile in a debian based platform execute the script "setup.sh" 

```sh
$ ./setup.sh
```

To install in other linux distribution install the following packages:
  - g++
  - libboost-python-dev
  - python-dev
  - python-numpy
  - python-pandas
  - python-sklearn
  - python-matplotlib

Then execute in the terminal:

```sh
$ make
$ make wrapper
```

# MICTools
MICTools allows to identify correlation between variables in a dataset. It can be used independently and compiled as a standalone application. 

<img src="https://github.com/ivangarcia88/ffselection/blob/assets/1.png">

# MICSelect
MICSelect perform the feature selection, it requires MICTools. 

<img src="https://github.com/ivangarcia88/ffselection/blob/assets/2.png">

# How to reproduce the results in the paper

Experiments were executed on ubuntu 18.04 using python 3.6

1. Compile mictools
2. Create the folder "datasets-test" in the root folder of this proyect
3. Create the folder "s10" inside the folder "datasets-test"
4. Create the folder "x20" inside the folder "datasets-test"
5. Download datasets https://u.pcloud.link/publink/show?code=XZT2pOkZgHaO7WBaWzVmGRmMdkdjLY39hK2V 
6. Run MICSelect with every dataset inside ("datasets-input") with the parameters (-y target -s 10)
7. Move every output ("datasets-output") to folder "datasets-test/s10"
8. Run MICSelect with every dataset inside ("datasets-input") with the parameters (-y target -x 20)
9. Move every output ("datasets-output") to folder "datasets-test/x20"
10. Runs result.py



