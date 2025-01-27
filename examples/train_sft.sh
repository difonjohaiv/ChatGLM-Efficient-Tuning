#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python ../src/train_bash.py \
    --stage sft \
    --model_name_or_path ..\\glm2-6b \
    --do_train \
    --dataset alpaca_gpt4_zh \
    --dataset_dir ../data \
    --finetuning_type lora \
    --output_dir ../sft-ckp \
    --overwrite_cache \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 1 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 5e-5 \
    --num_train_epochs 3.0 \
    --plot_loss \
    --fp16 \
    --use_v2

