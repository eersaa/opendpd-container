FROM python:3.13-slim

# Install scientific Python packages
RUN pip3 install --no-cache-dir \
    numpy \
    scipy \
    pandas \
    matplotlib \
    tqdm \
    rich

# Install PyTorch with CUDA 12.6 support
RUN pip3 install --no-cache-dir torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu126

# Install LNN dependencies
RUN pip3 install --no-cache-dir \
    ncps

# Set working directory
WORKDIR /workspace

# Default command
CMD ["/bin/bash"]
