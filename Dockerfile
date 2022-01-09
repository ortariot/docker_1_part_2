FROM python:3.8
ENV PYTHONUNBUFFERED 1
COPY ./stocks_products_server /stocks_products_server
RUN pip install -U pip
RUN pip install -Ur /stocks_products_server/requirements.txt
RUN python3 /stocks_products_server/manage.py migrate
CMD ["python3", "/stocks_products_server/manage.py", "runserver", "0.0.0.0:8080"]
