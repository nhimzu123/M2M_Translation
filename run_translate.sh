#! /bin/bash

export CUDA_VISIBLE_DEVICES=0 && python translate_100000.py data/100000_in_domain_40k_60k.vi translation/100000_in_domain_40k_60k.zh &
export CUDA_VISIBLE_DEVICES=1 && python translate_100000.py data/100000_in_domain_60k_80k.vi translation/100000_in_domain_60k_80k.zh &
export CUDA_VISIBLE_DEVICES=2 && python translate_100000.py data/100000_in_domain_80k_100k.vi translation/100000_in_domain_80k_100k.zh &
export CUDA_VISIBLE_DEVICES=3 && python translate_100000.py data/100000_in_domain_100k_120k.vi translation/100000_in_domain_100k_120k.zh &
export CUDA_VISIBLE_DEVICES=4 && python translate_100000.py data/100000_in_domain_120k_140k.vi translation/100000_in_domain_120k_140k.zh &
export CUDA_VISIBLE_DEVICES=5 && python translate_100000.py data/100000_in_domain_140k_160k.vi translation/100000_in_domain_140k_160k.zh &
export CUDA_VISIBLE_DEVICES=6 && python translate_100000.py data/100000_in_domain_160k_180k.vi translation/100000_in_domain_160k_180k.zh &
export CUDA_VISIBLE_DEVICES=7 && python translate_100000.py data/100000_in_domain_180k_200k.vi translation/100000_in_domain_180k_200k.zh
