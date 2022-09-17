FROM python:3.9.0

COPY ./ ./
RUN pip install --no-cache-dir --upgrade -r ./requirements.txt
RUN jupyter notebook --generate-config
RUN mv ./jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py

CMD ["jupyter", "notebook"]