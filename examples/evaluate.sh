#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python ../src/train_bash.py \
    --stage sft \
    --do_eval \
    --dataset alpaca_gpt4_zh \
    --dataset_dir ../data \
    --checkpoint_dir ../sft-ckp \
    --output_dir ../eval_result \
    --overwrite_cache \
    --per_device_eval_batch_size 8 \
    --max_samples 50 \
    --predict_with_generate
