python train.py --dir=./save/img --dataset=ImageNet100 --data_path=./data/ImageNet100  --model=PreResNet110 --epochs=150  --lr=0.1 --wd=3e-4 --use_test --transform=ResNet
python train.py --dir=./save/img_pgd --dataset=ImageNet100 --data_path=./data/ImageNet100  --model=PreResNet110 --epochs=150  --lr=0.1 --wd=3e-4 --use_test --transform=ResNet --pgd=inf
python train.py --dir=./save/img_pgd2 --dataset=ImageNet100 --data_path=./data/ImageNet100  --model=PreResNet110 --epochs=150  --lr=0.1 --wd=3e-4 --use_test --transform=ResNet --pgd=2
python  train.py --dir=./save/img_pgd_pgd2 --dataset=ImageNet100 --use_test --transform=ResNet --data_path=./data/ImageNet100 --model=PreResNet110 --curve=Bezier --num_bends=3  --init_start=./save/img_pgd/checkpoint-150.pt --init_end=./save/img_pgd2/checkpoint-150.pt --fix_start --fix_end --epochs=50 --lr=0.03 --wd=3e-4 --pgd=msd
python  eval_curve_pgd.py   --dir=./save/img_pgd_pgd --dataset=ImageNet100 --data_path=./data/ImageNet100 --transform=ResNet --model=PreResNet110 --curve=Bezier --num_bends=3 --ckpt=./save/img_pgd_pgd2/checkpoint-50.pt  --num_points=61 --use_test
