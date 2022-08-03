# VERSION: 0.1.0
# DESCRIPTION: Basic extensible Jupyter Notebook/Lab Container
# BUILD: docker build --rm -t docker-jupyter-extensible .

FROM python:3.7
RUN pip install jupyterlab
EXPOSE 8888
WORKDIR /home
RUN mkdir -p /home/notebook
RUN pip install pycaret
#CMD jupyter-lab notebook --ip 0.0.0.0 --port 8888 --allow-root
