FROM alpine:latest

RUN apk update && \
    apk add wget unzip && \ 
    cd /tmp && \
    mkdir alpinekesl && \
    wget http://2016.eicar.org/download/eicar_com.zip && \
    unzip eicar_com.zip  && \
    cat eicar.com
ADD run.sh /run.sh
RUN chmod +x /*.sh
CMD ["/run.sh"]
