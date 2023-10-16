FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run"]



# docker run -p 5000:5000 welcome-app
# docker build -t welcome-app .
# docker image rm -f welcome-app
# docker pull geetmukherjee/welcome-app:latest