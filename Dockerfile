# docker.io/paperspace/tensorflow-python
# 0.0.2

FROM docker.io/tensorflow/tensorflow:1.5.0-gpu-py3
# Alternate pinned source:
# FROM docker.io/paperspace/tensorflow:1.5.0-gpu

# RUN mv /usr/local/bin/pip /usr/local/bin/pip_2

RUN apt-get -y update && apt-get install -y python3-pip && pip3 install --upgrade pip

RUN apt-get install -y ffmpeg && apt-get install -y libsm6 && apt-get install -y libxext6

RUN apt-get install -y git

#RUN rm /usr/local/bin/pip && mv /usr/local/bin/pip_2 /usr/local/bin/pip

RUN pip3 install \
    pipenv \
    paperspace \
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
    gym[atari] \
    gym-super-mario-bros \
    pylivestream \
    opencv-python \
    keras

  RUN pip3 install gym[atari]
  RUN pip3 install opencv-python

  RUN git clone https://github.com/sokjc/WinnersCircle
