## 📦 Chapter 2 — Additional Installations Required After JetPack

JetPack 6.2 installs only the minimal BSP.  
To enable full GPU acceleration and AI workloads, the following components must be installed:

### GPU Compute Stack
- CUDA Toolkit 12.x  
- cuDNN 9.x  
- TensorRT 10.x  
- ONNX Runtime GPU  
- PyCUDA / CUDA Python  

### Vision & Multimedia
- DeepStream 7.x  
- VPI 3.x  
- OpenCV 4.8  

### Python AI/LLM/RAG Stack
- Transformers  
- Sentence Transformers  
- FAISS  
- ONNX  
- PyTorch  
- RAG libraries  

### System Tools
- Docker + NVIDIA container runtime  
- Build essentials  
- OpenMPI  
- OpenBLAS  
- Codecs  
- C++ dev libraries  

All of these are automated in the scripts below.

[install_base_software_packages](install_base_software_packages.sh)

## How to run the script:

- Download to the script to the Target system and make script executable.

```shell
chmod +x install_base_software_packages.sh
```
