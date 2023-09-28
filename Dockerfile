# ベースイメージを指定
FROM continuumio/miniconda3

# aptのパッケージを更新
RUN apt update

# Python 3.10の仮想環境（py310）を作成し、Jupyterをインストール
RUN conda create -n py310 python=3.10 pip && \
    echo "source activate py310" > ~/.bashrc && \
    /opt/conda/envs/py310/bin/pip install jupyter

# OpenCVをインストール
RUN /opt/conda/envs/py310/bin/pip install opencv-python opencv-contrib-python

# DockerでOpenCVを使うときに要る
# https://cocoinit23.com/docker-opencv-importerror-libgl-so-1-cannot-open-shared-object-file/
RUN apt install -y libgl1-mesa-dev

# matplotlib入れる
RUN /opt/conda/envs/py310/bin/pip install matplotlib

# Jupyter Notebookの設定とディレクトリ作成
ENV PATH /opt/conda/envs/py310/bin:$PATH
RUN mkdir -p /opt/notebooks

# Jupyter Notebookを起動
CMD ["bash", "-c", "/opt/conda/envs/py310/bin/jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"]
