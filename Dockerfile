FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

COPY ./groupchat /app

RUN pip install -r requirements.txt

EXPOSE 15400


CMD ["uvicorn", "chat:app", "--host", "0.0.0.0", "--port", "15400"]