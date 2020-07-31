python ../../tools/launch.py -s 4 -n 4 --launcher ssh -H hosts python train_imagenet.py --network  alexnet --data-train /GPUFS/pgpu12/imagenet/train.rec --data-val /GPUFS/pgpu12/imagenet/val.rec --gpus 0,1,2,3 --num-epochs 90 --lr-step-epochs pow-2 --lr-step-epochs-local pow-2 --optimizer-local GLU --batch-size 256 --lr 0.4 --lr-local 1.6 --kv-store dist_sync --model-prefix /GPUFS/pgpu12/checkpoint/sd-resent50-1ep/resnet --optimizer sgd --disp-batches 200 --warmup-epochs 5  --warmup-strategy linear --mom 0.9 --wd 0.0001
