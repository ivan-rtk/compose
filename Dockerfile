# Использовать официальный образ родительского образа / слепка.
FROM python:3.8
# Установка рабочей директории, откуда выполняются команды внутриконтейнера.
WORKDIR /stocks_products
# Скопировать все файлы с локальной машины внутрь файловой системы

COPY . .
# Запустить команду внутри образа, установка зависимостей.
RUN pip install -r requirements.txt

RUN chmod +x entrypoint.sh
#RUN python3 /stocks_products/manage.py makemigrations
#RUN python3 /stocks_products/manage.py migrate
#RUN python3 /stocks_products/manage.py collectstatic

#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "stocks_products.wsgi"]
ENTRYPOINT ["/stocks_products/entrypoint.sh"]


