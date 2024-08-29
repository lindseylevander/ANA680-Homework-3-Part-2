FROM python:3.8-slim

RUN pip install --no-cache-dir scikit-learn pandas numpy sagemaker

COPY app.py /opt/ml/code/app.py

WORKDIR /opt/ml/code

ENTRYPOINT ["python", "app.py"]

