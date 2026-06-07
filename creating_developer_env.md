
---

# 🐍 **Chapter 4 — Script for Python Virtual Environment + Pip Packages**

```markdown
## 🐍 Chapter 4 — Script for Python Virtual Environment + Pip Packages

Save as: `setup_python_env.sh`

```bash
#!/bin/bash
set -e

echo "=== Creating Python virtual environment ==="
python3 -m venv /home/nyra/crf_integration/crf_env
source /home/nyra/crf_integration/crf_env/bin/activate

echo "=== Upgrading pip ==="
pip install --upgrade pip

echo "=== Installing Python packages ==="
pip install -r pip_requirements.txt

echo "=== Setting environment variables ==="
echo 'export PATH=/usr/local/cuda-12.6/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export VIRTUAL_ENV=/home/nyra/crf_integration/crf_env' >> ~/.bashrc

echo "=== Python environment setup complete ==="


---

# 🧱 **Chapter 5 — Build Essentials for C++ Development**

```markdown
## 🧱 Chapter 5 — Build Essentials for C++ Development

Install these packages:

```bash
sudo apt install -y \
    build-essential \
    cmake \
    ninja-build \
    gdb \
    libopenblas-dev \
    liblapack-dev \
    libeigen3-dev \
    libboost-all-dev \
    libssl-dev \
    libprotobuf-dev protobuf-compiler \
    libopencv-dev \
    libopenmpi-dev openmpi-bin


These enable:

    TensorRT C++ engines

    ONNX Runtime C++

    DeepStream C++ apps

    Custom CUDA kernels

    High‑performance C++ inference pipelines

