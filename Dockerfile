# Используем Node.js для сборки Vue.js проекта
FROM node:16.10.0-alpine3.13 AS build-stage

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем оставшиеся файлы проекта
COPY . .

# Собираем Vue.js приложение в production режиме
RUN npm run build

# Используем Nginx для сервинга собранного приложения
FROM nginx:stable-alpine AS production-stage

# Копируем собранное приложение из предыдущего этапа
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Копируем файл конфигурации Nginx (если у вас есть кастомный файл)
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Открываем порт 80
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]