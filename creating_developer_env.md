## 🐍 Chapter 3 — Python Virtual Environment + Pip Packages

JetPack and the BSP installation provide the system‑level GPU stack, but a **Python development environment** is still required for:

- LLM / RAG workloads  
- ONNX Runtime Python  
- PyTorch  
- Transformers  
- DeepStream Python bindings  
- Custom inference pipelines  

The following script creates a reproducible Python virtual environment and installs all required pip packages.

---

## ▶️ Python Environment Setup Script

Save the script below as `setup_python_env.sh`, make it executable, and run it.



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
```

### How to run:

```bash
chmod +x setup_python_env.sh
./setup_python_env.sh
```

---


# 🧱 Build Essentials for C++ Development

To support C++ inference engines, TensorRT C++ APIs, ONNX Runtime C++, and DeepStream C++ applications, install the following packages:



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
```

### These enable:
- TensorRT C++ engines  
- ONNX Runtime C++  
- DeepStream C++ applications  
- Custom CUDA kernels  
- High‑performance C++ inference pipelines  

---

## 🎉 Summary

After completing this chapter:

- Python environment is fully configured  
- All pip dependencies are installed  
- CUDA paths are persistent  
- C++ toolchain is ready for TensorRT, ONNX, and DeepStream  
- Your Jetson J40 is prepared for **both Python and C++ AI workloads**

This ensures a **reproducible, development‑ready environment** for any engineer working on the project.
