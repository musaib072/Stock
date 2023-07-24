FROM  python:3.10.12-alpine
RUN mkdir /app
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  
COPY requirements.txt .
RUN pip install  -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["python", "manage.py", "runserver"]