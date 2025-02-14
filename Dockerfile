FROM python:3-bookworm
WORKDIR /app
COPY . /app
COPY requirements.txt /app
RUN pip3 install -r requirements.txt
EXPOSE 8080
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
