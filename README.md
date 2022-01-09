# Задание 2

* Создайте контейнер для REST API сервера любого вашего проекта из курса по Django

Использована БД sqllite. Настройки `settings.py` :

```python
    DATABASES = {
    'default': {
                'ENGINE': 'django.db.backends.sqlite3',
                 'NAME': 'netology_stocks_products_lite',
                }
                }
```

сборка контейнера:

``` bash
docker build -t simple_server .
```

запуск:

``` bash
docker run --name simple24 -d -p 8080:8080 simple_server
```

Для проверки работоспособности сревера реализована загрузка вебстраницы с сообщением "Stock logistic!!!"

Для проверки работсопосбности REST API можно использовать команды из [requests-examples.http](stocks_products_server/requests-examples.http)