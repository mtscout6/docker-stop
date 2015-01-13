FROM ubuntu:14.04

COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh

# PID 1 will be sh
#CMD /opt/bin/entry_point.sh

# PID 1 will be entry_point.sh
CMD ["/opt/bin/entry_point.sh"]
