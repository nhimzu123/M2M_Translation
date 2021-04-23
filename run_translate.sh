#! /bin/bash

export CUDA_VISIBLE_DEVICES=0 && python translate_100000.py data/ translation/ &
export CUDA_VISIBLE_DEVICES=1 && python translate_100000.py data/ translation/ &
export CUDA_VISIBLE_DEVICES=2 && python translate_100000.py data/ translation/ &
export CUDA_VISIBLE_DEVICES=3 && python translate_100000.py data/ translation/ &
export CUDA_VISIBLE_DEVICES=4 && python translate_100000.py data/ translation/ &
export CUDA_VISIBLE_DEVICES=5 && python translate_100000.py data/ translation/ &
export CUDA_VISIBLE_DEVICES=6 && python translate_100000.py data/ translation/ &
export CUDA_VISIBLE_DEVICES=7 && python translate_100000.py data/ translation/ &
