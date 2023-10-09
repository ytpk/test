# Используем nginx:alpine как базовый образ
FROM nginx:alpine

# Устанавливаем curl для загрузки конфигурационного файла
RUN apk add --no-cache curl

# Удаляем конфигурацию по умолчанию
RUN rm /etc/nginx/conf.d/default.conf

# Загружаем наш конфигурационный файл с GitHub и перемещаем его в нужную директорию
RUN curl -L -o /etc/nginx/conf.d/nginx.conf https://raw.githubusercontent.com/ytpk/Pe4ka/main/nginx8.conf

# Открываем порт 80
EXPOSE 8080
