FROM alpine:latest

RUN apk update && \
    apk add wget unzip 
    
CMD /bin/sh