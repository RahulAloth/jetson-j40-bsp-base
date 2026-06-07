## 🛠️ Chapter 3 — Shell Script: Base BSP Installation

Save as: `install_base_software.sh`

```bash
#!/bin/bash
set -e

echo "=== Updating system ==="
sudo apt update
sudo apt upgrade -y

echo "=== Installing core development tools ==="
sudo apt install -y \
    cmake g++ gnupg curl wget \
    libopenblas-base libopenmpi-dev openmpi-bin \
    libjpeg-dev zlib1g-dev libpython3-dev \
    libavcodec-dev libavformat-dev libswscale-dev \
    tesseract-ocr libtesseract-dev libleptonica-dev \
    python3-pip python3-venv python3-virtualenv \
    nlohmann-json3-dev

echo "=== Installing Docker + NVIDIA Container Runtime ==="
sudo apt install -y docker-ce docker-ce-cli containerd.io \
    docker-buildx-plugin docker-compose-plugin
sudo apt install -y libnvidia-container1 libnvidia-container-tools \
    nvidia-container-toolkit nvidia-container-toolkit-base

echo "=== Installing CUDA 12.6 ==="
sudo dpkg -i /opt/nvidia/deb_repos/l4t-cuda-tegra-repo-ubuntu2204-12-6-local_12.6.11-1_arm64.deb
sudo apt update
sudo apt install -y cuda-toolkit-12-6 cuda-runtime-12-6

echo "=== Installing cuDNN 9.3 ==="
sudo dpkg -i /opt/nvidia/deb_repos/cudnn-local-tegra-repo-ubuntu2204-9.3.0_1.0-1_arm64.deb
sudo apt update
sudo apt install -y libcudnn9-cuda-12 libcudnn9-dev-cuda-12 libcudnn9-samples

echo "=== Installing TensorRT 10.3 ==="
sudo dpkg -i /opt/nvidia/deb_repos/nv-tensorrt-local-tegra-repo-ubuntu2204-10.3.0-cuda-12.5_1.0-1_arm64.deb
sudo apt update
sudo apt install -y tensorrt tensorrt-libs

echo "=== Installing DeepStream 7.1 ==="
sudo dpkg -i /opt/nvidia/deb_repos/deepstream-7.1_7.1.0-1_arm64.deb

echo "=== Installing OpenCV 4.8 ==="
sudo dpkg -i /opt/nvidia/deb_repos/OpenCV-4.8.0-1-g6371ee1-aarch64-*.deb

echo "=== Installing VPI 3.2.4 ==="
sudo dpkg -i /opt/nvidia/deb_repos/vpi-*.deb

echo "=== BSP installation complete ==="
