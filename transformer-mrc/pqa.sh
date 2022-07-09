#sketchy module
export DATA_DIR=data
export TASK_NAME=squad
python ./examples/pqa.py \
    --model_type albert \
    --model_name_or_path HooshvareLab/albert-fa-zwnj-base-v2 \
    --task_name $TASK_NAME \
    --do_train \
    --do_eval \
    --do_lower_case \
    --data_dir $DATA_DIR \
    --max_seq_length 512 \
    --per_gpu_train_batch_size=3072   \
    --per_gpu_eval_batch_size=8   \
    --warmup_steps=814 \
    --learning_rate 2e-5 \
    --num_train_epochs 2.0 \
    --eval_all_checkpoints \
    --no_cuda \
    --output_dir squad/albert-fa-1 \
    --save_steps 2500 