#!/bin/bash

set -e

./download.sh
python resize.py
python prepro.py
python train.py

