TASK_NAME=mrpc

python -m paddle.distributed.launch \
run_glue_distributed.py \
    --task $TASK_NAME \
    --data_dir ./data/glue/$TASK_NAME/ \
    --bsz 32 \
    --epoch 4 \
    --lr 3e-5 \
    --from_pretrained ernie-2.0-en \
    --save_dir ./models/base/$TASK_NAME/
