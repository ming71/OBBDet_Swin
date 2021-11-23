# SwinTransformer + OBBDet

The sixth place winning solution (6/220) in the track of Fine-grained Object Recognition in High-Resolution Optical Images, 2021 Gaofen Challenge on Automated High-Resolution Earth Observation Image Interpretation. 


## Members
[Qi Ming](https://github.com/ming71),  [Junjie Song](https://github.com/sunny-sjj), [Yunpeng Dong](https://github.com/OOLLcnm).


## Solution

* **Off-line date augmentation**  
  We use random combination of affine transformation, flip, scaling, optical distortion for data augmentation.

* **Multi-scale training and testing**    
  The training images are resized into sizes of 600, 800, and 1024 for training and testing.

* **Strong backbone**  
  Swin transformer is adopt in ORCNN and RoI Transformer for better performance.

* **Model ensemble**  
  We have merged the results from RoI Transformer, ORCNN, S2ANet, and ReDet.

* **Lower confidence**  
  Set the output threshold into 0.005.

## Tried but didn't work

* Soft-NMS.
* Adjust NMS threshold.
* Class-agnostic NMS.
* Mosaic, and mix up for data augmentation. 
* Oversample the categories with fewer instances.
* Train the detectors for specific classes with low AP.
*  Multi-scale training and testing on SwinTransformer-based detectors (even dropped by about 1% mAP).

## Detections

![demo image](demo/demo.png)

