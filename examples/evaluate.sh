#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python ../src/train_bash.py \
    --stage sft \
    --do_eval \
    --model_name_or_path ..\\glm2-6b \
    --dataset alpaca_gpt4_zh \
    --dataset_dir ..\\data \
    --checkpoint_dir ..\\lora-glm2 \
    --output_dir ..\\eval-result \
    --overwrite_cache \
    --per_device_eval_batch_size 8 \
    --max_samples 50 \
    --predict_with_generate \
    --use_v2
