
torchrun --nnodes=1 --nproc_per_node=2 --master_port=20111 \
    sample/inference_HARoPE.py \
    --model DiT-B/2 \
    --image-size 256 \
    --num-sampling-steps 250 \
    --num-fid-samples 50000 \
    --cfg-scale 1.5 \
    --ckpt /pretrained_models/your_ckpt \
    --vae /pretrained_models/sd-vae-ft-mse