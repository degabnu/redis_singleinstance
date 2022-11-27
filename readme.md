 docker build -t douglasdega/redis:0.0.1.RELEASE .
 docker run -d --restart=unless-stopped -p 14500:14500 --expose=14500 douglasdega/redis:0.0.1.RELEASE
 docker push douglasdega/redis:0.0.1.RELEASE