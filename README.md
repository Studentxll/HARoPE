## Head-wise Adaptive Rotary Positional Encoding for Fine-Grained ImageGeneration [[Paper]](https://arxiv.org/pdf/2510.10489v2)  

![image/jpeg](pic/teasers.jpg)

> [**Head-wise Adaptive Rotary Positional Encoding for Fine-Grained ImageGeneration**](https://github.com/Studentxll/HARoPE),            
> Jiaye Li, Baoyou Chen, Hui Li, Zilong Dong, Jingdong Wang, Siyu Zhu    
> *CVPR 2026 ([arXiv 2405.10489](https://arxiv.org/pdf/2510.10489v2))*  

## Abstract

Transformers rely on explicit positional encoding to model structure in data. While Rotary Position Embedding (RoPE) excels in 1D domains, its application to image generation reveals significant limitations such as finegrained spatial relation modeling, color cues, and object counting. This paper identifies key limitations of standard multi-dimensional RoPE—axis-wise independence, and uniform head treatment—in capturing the complex structural biases required for fine-grained image generation. We propose HARoPE, a head-wise adaptive extension that inserts a learnable linear transformation parameterized via singular value decomposition (SVD) before the rotary mapping.This lightweight modification enables semantic alignment of rotary planes, and head-specific positional receptive fields while rigorously preserving RoPE’s relative-position property. Extensive experiments on class-conditional ImageNet and text-to-image generation (Flux and SD3) demonstrate that HARoPE consistently improves performance over strong RoPE baselines and other extensions. The method serves as an effective drop-in replacement, offering a principled and adaptable solution for enhancing positional awareness in transformer-based image generative models.

## Setup

First, download and set up the repo:

```bash
git clone https://github.com/Studentxll/HARoPE
cd HARoPE
```


```bash
conda create -n HARoPE -y 
conda activate HARoPE
pip install -r requirments.txt
```


## Sampling 

```bash
bash sample/inference_HARoPE.sh
```
## Training 

We provide a training script for HARoPE in [`train/train_HARoPE.sh`](train/train_HARoPE.sh). 

```bash
bash train_HARoPE.sh
```

### Evaluation based on DiT

We've trained HARoPE based on DiT-B/2 models from scratch with the PyTorch training script.

| Method  | Train Steps | FID-50K | 
|------------|-------------|----------------------------
| APE（default）       | 1M        | 11.47                
| RoPE        | 1M         | 9.81                 
| 2D-RoPE        | 1M        | 9.49                      
| STRING/Rethinking RoPE       | 1M        | 9.31
|HARoPE        | 1M          |**8.90**
## BibTeX

```bibtex
@article{li2025head,
  title={Head-wise Adaptive Rotary Positional Encoding for Fine-Grained Image Generation},
  author={Li, Jiaye and Chen, Baoyou and Li, Hui and Dong, Zilong and Wang, Jingdong and Zhu, Siyu},
  journal={arXiv preprint arXiv:2510.10489},
  year={2025}
}
```


## Acknowledgments
This work was supported in part by the Shanghai Municipal Commission of Economy and Informatization (No.~2025-GZL-RGZN-BTBX-01011).


## License
The code and model weights are licensed under CC-BY-NC. See [`LICENSE.txt`](LICENSE.txt) for details.
