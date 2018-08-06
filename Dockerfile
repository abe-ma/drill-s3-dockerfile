FROM masabe605/drill-alpine:1.13
MAINTAINER masabe605

COPY core-site.xml.base /root/
COPY bootstrap.sh /root/apache-drill-1.13.0/

RUN chmod 777 /root/apache-drill-1.13.0/bootstrap.sh

WORKDIR /root/apache-drill-1.13.0/

EXPOSE 8047

CMD ./bootstrap.sh

