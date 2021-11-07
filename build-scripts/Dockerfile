ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}-slim-bullseye
ENV INTERVAL=2.0 IP_ADDRESS=127.0.0.1 DUALSTACK= \ 
    UID=1000 GID=1000
RUN groupadd -g $GID ssh && \
    useradd -u $UID -g $GID -m -d /home/ssh ssh
RUN pip3 install --no-cache-dir ssh-tarpit
USER ssh
WORKDIR /home/ssh/
CMD ["sh", "-c", "ssh-tarpit -i $INTERVAL -a $IP_ADDRESS -p 22 $DUALSTACK > /home/ssh/$(date '+%Y-%m-%d_%H-%M-%S')_tarpit.log 2>&1"]
