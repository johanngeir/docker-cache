FROM tutum/varnish

EXPOSE 80

ADD config.vcl /

ENTRYPOINT varnishd -F -f /config.vcl -a 0.0.0.0:80 -s malloc,1536m