# задаем базовый образ
FROM nginx

# создаем директорию внутри контейнера
RUN mkdir -p /usr/share/nginx/html

# копируем файлы настроек и index.html в контейнер
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html

# задаем порт веб-сервера
EXPOSE 80

# запускаем веб-сервер
CMD ["nginx", "-g", "daemon off;"]