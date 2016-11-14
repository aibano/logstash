FROM logstash

# Install elasticsearch plugin
RUN gosu logstash /usr/share/logstash/bin/logstash-plugin install logstash-output-elasticsearch

#Install GELF plugin
RUN gosu logstash /usr/share/logstash/bin/logstash-plugin install logstash-input-gelf
