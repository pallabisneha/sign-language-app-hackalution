FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install Flask==2.3.3 cvzone==1.5.6 opencv-python==4.7.0.72 \
    tensorflow==2.11.0 tensorflow-io-gcs-filesystem==0.30.0 \
    numpy==1.23.5 matplotlib==3.7.2 requests==2.31.0

EXPOSE 5000

CMD ["python", "app.py"]
