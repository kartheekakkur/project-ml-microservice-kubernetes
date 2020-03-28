FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py /app/

## Step 3:
RUN pip install --upgrade pip==20.0.2  &&\
    pip install --trusted-host pypi.python.org  -r requirements.txt &&\
    pip install joblib==0.14
# hadolint ignore=DL3013

## Step 4:
EXPOSE  80

## Step 5:
CMD ["python", "app.py"]

