#! /bin/bash
# Translate 800,000 sentences using 8 GPUs.

export CUDA_VISIBLE_DEVICES=0 && python translate_100000.py data/wmt17_0_25000.en translation/wmt17_0_25000.vi &
export CUDA_VISIBLE_DEVICES=1 && python translate_100000.py data/wmt17_25000_50000.en translation/wmt17_25000_50000.vi &
export CUDA_VISIBLE_DEVICES=2 && python translate_100000.py data/wmt17_50000_75000.en translation/wmt17_50000_75000.vi &
export CUDA_VISIBLE_DEVICES=3 && python translate_100000.py data/wmt17_75k_100k.en translation/wmt17_75k_100k.vi &
export CUDA_VISIBLE_DEVICES=4 && python translate_100000.py data/wmt17_125k_150k.en translation/wmt17_125k_150k.vi &
export CUDA_VISIBLE_DEVICES=5 && python translate_100000.py data/wmt17_100k_125k.en translation/wmt17_100k_125k.vi &
export CUDA_VISIBLE_DEVICES=6 && python translate_100000.py data/wmt17_150k_180k.en translation/wmt17_150k_180k.vi
