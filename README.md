# Demo Django Application
## Description
If you are searching for a simple, configurable Django application to apply what you learned through docker and kubernetes courses, this is the repo you need.
This application was made to make your life a bit easier!

![image](https://github.com/zAbuQasem/Dockerized-Django/assets/74984708/0200901d-4643-4174-b9b6-4177f69a7c92)


### Usage
1. Clone the repository 
```sh
git clone https://github.com/zAbuQasem/Dockerized-Django.git
cd Dockerized-Django
```
2. [Optional] Configure Environment variables
```sh
mv env.example .env
``` 
3. Build Docker Image
```sh
docker build -t dockerized-django .
```
4. Run
```sh
docker run -d -p 8000:8000 dockerized-django
```

### Useful Endpoints
1. `/healthz`: For health checks.
