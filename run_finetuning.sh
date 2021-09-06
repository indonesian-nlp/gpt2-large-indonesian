MODEL_DIR="$(pwd)"
export MODEL_DIR
export WANDB_ENTITY="cahya"
export WANDB_PROJECT="gpt2-indonesian"
export WANDB_LOG_MODEL="true"

./run_clm_flax.py \
    --model_name_or_path="./flax_model.msgpack" \
    --output_dir="${MODEL_DIR}/finetuning" \
    --model_type="gpt2" \
    --config_name="${MODEL_DIR}" \
    --tokenizer_name="${MODEL_DIR}" \
    --dataset_name="./text_collection" \
    --dataset_config_name="text_collection" \
    --dataset_data_dir="/media/storage/datasets/storial/books_txt" \
    --do_train --do_eval \
    --block_size="512" \
    --per_device_train_batch_size="8" \
    --per_device_eval_batch_size="8" \
    --learning_rate="0.00005" --warmup_steps="1000" \
    --adam_beta1="0.9" --adam_beta2="0.98" --weight_decay="0.01" \
    --overwrite_output_dir \
    --num_train_epochs="20" \
    --dataloader_num_workers="64" \
    --preprocessing_num_workers="64" \
    --logging_steps="1000" \
    --save_steps="1000" \
    --eval_steps="1000" \
    --validation_split_percentage="10" \
    --push_to_hub="false"
