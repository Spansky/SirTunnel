FROM python

RUN apt-get update && apt-get install -y libcap2-bin

COPY install.sh /install.sh
RUN /install.sh

COPY run_server.sh /run_server.sh
COPY caddy_config.json /caddy_config.json
COPY sirtunnel.py /sirtunnel.py

ENTRYPOINT ["/bin/bash", "run_server.sh"]
