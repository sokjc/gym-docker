# docker.io/paperspace/tensorflow-python
# 0.0.2

FROM gcr.io/tensorflow/tensorflow:1.5.0-gpu
# Alternate pinned source:
# FROM docker.io/paperspace/tensorflow:1.5.0-gpu

RUN mv /usr/local/bin/pip /usr/local/bin/pip_2

RUN apt-get -y update && apt-get install -y python3-pip && pip3 install --upgrade pip

RUN rm /usr/local/bin/pip && mv /usr/local/bin/pip_2 /usr/local/bin/pip

RUN pip3 install \
    pipenv \
    paperspace

RUN pip2 install \
    pipenv \
    paperspace

RUN pip3 install \
    tensorflow-gpu \
    jupyter \
    scikit-learn \
    scipy \
    sklearn \
    pandas \
    Pillow \
    matplotlib \
    h5py \
    mock \
    certifi \
    configparser \
    enum34 \
    funcsigs \
    pathlib2 \
    pbr \
    scandir \
    singledispatch \
    webencodings \
    gym \ 
    gym[atari] 
    
RUN apt-get -y update && apt-get install -y wget nano git build-essential yasm pkg-config

# Compile and install ffmpeg from source
RUN git clone https://github.com/FFmpeg/FFmpeg /root/ffmpeg && \
    cd /root/ffmpeg && \
    ./configure --enable-nonfree --disable-shared --extra-cflags=-I/usr/local/include && \
    make -j8 && make install -j8
