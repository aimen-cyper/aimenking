# استخدام نسخة خفيفة من node
FROM node:18-alpine

# تحديد مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملفات الإعدادات وتثبيت المكتبات
COPY package*.json ./
RUN npm install

# نسخ باقي ملفات المشروع
COPY . .

# المنفذ الذي سيعمل عليه التطبيق (تأكد أنه يطابق المنفذ في server.js)
EXPOSE 3000

# الأمر لتشغيل التطبيق
CMD ["node", "server.js"]
