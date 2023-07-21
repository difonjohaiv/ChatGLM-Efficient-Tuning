#!/bin/bash
# coding=utf-8
# a shell used to Exports the fine-tuned ChatGLM-6B model.

python ../src/export_model.py \
    --checkpoint_dir ..\\sft-ckp \
    --dataset_dir ..\\data \
    --output_dir ..\\lora_glm2
