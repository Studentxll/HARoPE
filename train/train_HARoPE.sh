#!/bin/bash


torchrun --nnodes=1 \
    --nproc_per_node=4 --master_port=22921 train/train_HARoPE.py \
    --image-size 256 \
    --model DiT-B/2 \
    --global-batch-size 256 \
    --num-workers 16 \
    --data-path /dataset/imagenet-sdvae-feature