FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install flask gunicorn 

EXPOSE 5000

CMD ["python", "-m", "gunicorn", "-w", "3", "-b", "0.0.0.0", "app:app"]
