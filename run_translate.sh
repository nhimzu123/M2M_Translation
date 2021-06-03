#! /bin/bash
# Translate 800,000 sentences using 8 GPUs.

export CUDA_VISIBLE_DEVICES=0 && python translate_100000.py data/name_wmt17_0_70k.en  translation/name_wmt17_0_70k.vi &
export CUDA_VISIBLE_DEVICES=1 && python translate_100000.py data/name_wmt17_70k_140k.en  translation/name_wmt17_70k_140k.vi &
export CUDA_VISIBLE_DEVICES=2 && python translate_100000.py data/name_wmt17_140k_210k.en  translation/name_wmt17_140k_210k.vi &
export CUDA_VISIBLE_DEVICES=3 && python translate_100000.py data/name_wmt17_210k_280k.en  translation/name_wmt17_210k_280k.vi &
export CUDA_VISIBLE_DEVICES=4 && python translate_100000.py data/name_wmt17_280k_350k.en  translation/name_wmt17_280k_350k.vi &
export CUDA_VISIBLE_DEVICES=5 && python translate_100000.py data/name_wmt17_350k_420k.en  translation/name_wmt17_350k_420k.vi &
export CUDA_VISIBLE_DEVICES=6 && python translate_100000.py data/name_wmt17_420k_490k.en  translation/name_wmt17_420k_490k.vi &
export CUDA_VISIBLE_DEVICES=7 && python translate_100000.py data/name_wmt17_490k_550k.en  translation/name_wmt17_490k_550k.vi
