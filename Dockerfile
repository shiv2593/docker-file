FROM python:3.8-slim

COPY . /demo

WORKDIR /demo

RUN pip install -r requirements.txt

RUN python -m spacy download en_core_web_sm

EXPOSE 8010

CMD ["python3","app.py"]
~

