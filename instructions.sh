#!/bin/sh -x -e

# create the virtual environment
python3 -m virtualenv venv

# activate the venv
source venv/bin/activate

# install Flask
pip install flask

# docker file
docker build .

# run the pod
docker run -p5000:5000 <name of image>

# now run the kubernetes version
kubectl apply -f kubernetes.yaml
