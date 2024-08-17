FROM nvidia/cuda:12.4.0-devel-ubuntu20.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    && ln -s /usr/bin/python3 /usr/bin/python  # python3 を python としてシンボリックリンク

RUN python3 -m pip install --upgrade pip

RUN pip3 install torch torchvision torchaudio \
    tensorflow \
    scipy \
    Pillow \
    scikit-learn \
    pandas

WORKDIR /app

EXPOSE 8888

CMD ["/bin/bash"]
