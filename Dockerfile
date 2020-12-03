FROM python:3.6

COPY start.sh /start.sh
RUN chmod 755 /start.sh

RUN pip install opcua -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
RUN pip install cryptography -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

CMD ["./start.sh"]
