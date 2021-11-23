## Installation

### Requirements

- Linux or macOS (Windows is not currently officially supported)
- Python 3.6+
- PyTorch 1.5+
- CUDA 10.2+ 
- [mmcv](https://github.com/open-mmlab/mmcv)
- [BboxToolkit 1.0](https://github.com/jbwang1997/BboxToolkit)

### Install OBBDetection

a. Create a conda virtual environment and activate it.

```shell
conda create -n obbdetection python=3.7 -y
conda activate obbdetection
```

b. Install PyTorch and torchvision:

```python
pip install torch==1.5.0 torchvision==0.6.0
```

c. Clone the repository.

```shell
git clone git@github.com:ming71/OBBDet_Swin.git
cd OBBDet_Swin
```

d. Install build requirements and then install .

```shell
# install the BboxToolkit
cd BboxToolkit
pip install -v -e .  # or "python setup.py develop"
cd ..

# install the OBBDetection
pip install -r requirements/build.txt
pip install mmpycocotools
pip install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu102/torch1.5.0/index.html 
python setup.py develop
```

If you build OBBDetection on macOS, replace the last command with

```
CC=clang CXX=clang++ CFLAGS='-stdlib=libc++' pip install -e .
```

Note:

1. The git commit id will be written to the version number with step d, e.g. 0.6.0+2e7045c. The version will also be saved in trained models.
  It is recommended that you run step d each time you pull some updates from github. If C++/CUDA codes are modified, then this step is compulsory.

   > Important: Be sure to remove the `./build` folder if you reinstall mmdet with a different CUDA/PyTorch version.

   ```
   pip uninstall mmdet
   rm -rf ./build
   find . -name "*.so" | xargs rm
   ```

  


