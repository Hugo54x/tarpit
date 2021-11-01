FROM python:3.7-slim-bullseye
ENV INTERVAL=2.0 IP_ADDRESS=127.0.0.1 DUALSTACK= \ 
    UID=1000 GID=1000
RUN addgroup --gid $GID ssh
RUN adduser --disabled-password --gecos '' --uid $UID --gid $GID ssh
RUN pip3 install --no-cache-dir ssh-tarpit uvloop
USER ssh
CMD ["sh", "-c", "ssh-tarpit -i $INTERVAL -a $IP_ADDRESS -p 22 $DUALSTACK > /home/$(date '+%Y-%m-%d_%H-%M-%S')_tarpit.log 2>&1"]
