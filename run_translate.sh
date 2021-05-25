#! /bin/bash
# Translate 800,000 sentences using 8 GPUs.

export CUDA_VISIBLE_DEVICES=0 && python translate_100000.py data/train_ner_0_30k.vi translation/train_ner_0_30k.zh &
export CUDA_VISIBLE_DEVICES=1 && python translate_100000.py data/train_ner_30_60k.vi translation/train_ner_30_60k.zh &
export CUDA_VISIBLE_DEVICES=2 && python translate_100000.py data/train_ner_60k_90k.vi translation/train_ner_60k_90k.zh &
export CUDA_VISIBLE_DEVICES=3 && python translate_100000.py data/train_ner_90k_120k.vi translation/train_ner_90k_120k.zh &
export CUDA_VISIBLE_DEVICES=4 && python translate_100000.py data/train_ner_120k_150k.vi translation/train_ner_120k_150k.zh &
export CUDA_VISIBLE_DEVICES=5 && python translate_100000.py data/train_ner_150k_180k.vi translation/train_ner_150k_180k.zh &
export CUDA_VISIBLE_DEVICES=6 && python translate_100000.py data/train_ner_180k_210k.vi translation/train_ner_180k_210k.zh &
export CUDA_VISIBLE_DEVICES=7 && python translate_100000.py data/train_ner_210k_220k.vi translation/train_ner_210k_220k.zh
