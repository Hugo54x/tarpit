ARG PYTHON_VERSION
FROM arm32v6/python:${PYTHON_VERSION}-alpine
ENV INTERVAL=2.0 IP_ADDRESS=127.0.0.1 DUALSTACK= \ 
    UID=1000 GID=1000
RUN addgroup -g $GID ssh && \
    adduser -u $UID -G ssh -D --home /home/ssh ssh
RUN pip3 install --no-cache-dir ssh-tarpit
USER ssh
WORKDIR /home/ssh/
CMD ["sh", "-c", "ssh-tarpit -i $INTERVAL -a $IP_ADDRESS -p 22 $DUALSTACK > /home/ssh/$(date '+%Y-%m-%d_%H-%M-%S')_tarpit.log 2>&1"]
