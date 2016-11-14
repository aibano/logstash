FROM logstash

# Install elasticsearch plugin
RUN gosu logstash /usr/share/logstash/bin/logstash-plugin install logstash-output-elasticsearch

#Install GELF plugin
RUN gosu logstash /usr/share/logstash/bin/logstash-plugin install logstash-input-gelf

EXPOSE 12201 12201/udp 12202 12202/udp
EXPOSE 4560
