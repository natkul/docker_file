**Dockerfile.py README**

**Требования**

1. Написать Dockerfile с помощью которого можно запустить ваши тесты на opencart
2. Запуск должен сохранить возможность передачи параметров при запуске.

**Запуск и результат**

Установка:
$ git clone git@github.com:natkul/docker_file.git

OpenCart (linux):
Поднять OpenCart: sudo OPENCART_PORT=8081 PHPADMIN_PORT=8888 LOCAL_IP=$(hostname -I | grep -o "^[0-9.]*") docker-compose
up -d
Запустить Selenoid: sudo ./cm selenoid start

Запуск:

$ docker build -t exissize_docker .
$ docker run -it --rm exissize_docker pytest --browser_version <browser_version> --browser <browser>
example : docker run -it --rm exissize_docker pytest --browser_version 101.0 --browser chrome)
