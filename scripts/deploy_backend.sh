#!/bin/bash
dist="/home/ec2-user/project"

python3 -m venv $dist/venv
source $dist/venv/bin/activate

pip3 install -r $dist/requirements.txt

python $dist/backend.py
