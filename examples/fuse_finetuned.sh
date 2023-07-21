#!/bin/bash
# coding=utf-8
# a shell used to Exports the fine-tuned ChatGLM-6B model.

python ../src/export_model.py \
    --checkpoint_dir ..\\sft-ckp \
    --model_name_or_path ..\\glm2-6b \
    --dataset_dir ..\\data \
    --output_dir ..\\lora-glm2 \
    --use_v2
