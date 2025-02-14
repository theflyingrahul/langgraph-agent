FROM tensorflow/tensorflow:latest-gpu
WORKDIR /usr/src/app
EXPOSE 8888

COPY requirements.txt ./

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT jupyter notebook --ip='0.0.0.0' --NotebookApp.token='' --allow-root
