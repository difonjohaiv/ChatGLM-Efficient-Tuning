#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python ../src/train_bash.py \
    --stage sft \
    --do_eval \
    --model_name_or_path ..\\glm2-6b \
    --dataset alpaca_gpt4_zh \
    --dataset_dir ..\\data \
    --finetuning_type lora \
    --checkpoint_dir ..\\sft-ckp\\checkpoint-146000 \
    --output_dir ..\\eval-result \
    --overwrite_cache \
    --per_device_eval_batch_size 8 \
    --max_samples 50 \
    --predict_with_generate \
    --use_v2

# CUDA_VISIBLE_DEVICES=0 python src/train_bash.py \
#     --stage sft \
#     --model_name_or_path path_to_your_chatglm_model \
#     --do_eval \
#     --dataset alpaca_gpt4_en \
#     --finetuning_type lora \
#     --checkpoint_dir path_to_checkpoint \
#     --output_dir path_to_eval_result \
#     --per_device_eval_batch_size 8 \
#     --max_samples 50 \
#     --predict_with_generate