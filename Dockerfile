FROM tensorflow/tensorflow:latest-gpu
WORKDIR /usr/src/app
EXPOSE 8888

COPY requirements.txt ./

RUN apt update
RUN apt upgrade -y
RUN apt install python3-dev graphviz libgraphviz-dev pkg-config -y
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT jupyter notebook --ip='0.0.0.0' --NotebookApp.token='' --allow-root
