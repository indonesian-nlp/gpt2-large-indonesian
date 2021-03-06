#!/bin/sh

export MODEL_DIR=`pwd`
export WANDB_ENTITY="wandb"
export WANDB_PROJECT="hf-flax-gpt2-indonesian"
export WANDB_LOG_MODEL="true"

./run_clm_flax.py \
    --output_dir="${MODEL_DIR}" \
    --model_type="gpt2" \
    --config_name="${MODEL_DIR}" \
    --tokenizer_name="${MODEL_DIR}" \
    --dataset_name="./text_collection" \
    --dataset_config_name="text_collection" \
    --dataset_data_dir="/media/storage/datasets/collection" \
    --do_train --do_eval \
    --block_size="512" \
    --per_device_train_batch_size="4" \
    --per_device_eval_batch_size="4" \
    --learning_rate="0.0005" --warmup_steps="1000" \
    --adam_beta1="0.9" --adam_beta2="0.98" --weight_decay="0.01" \
    --overwrite_output_dir \
    --num_train_epochs="10" \
    --dataloader_num_workers="64" \
    --preprocessing_num_workers="64" \
    --logging_steps="5000" \
    --save_steps="5000" \
    --eval_steps="50000" \
    --validation_split_percentage="1" \
    --adafactor \
    --push_to_hub="false"
