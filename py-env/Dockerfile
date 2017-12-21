FROM python:2.7-alpine

RUN apk update; \
	apk upgrade; \
	apk add --update wget make cmake gcc g++ gfortran parallel python py-pip python-dev bash libstdc++; \
	rm -rf /var/cache/apk/*

RUN ln -s /usr/include/locale.h /usr/include/xlocale.h
RUN pip install --no-cache-dir setuptools numpy cython pandas python-constraint py2neo ipython fix-yahoo-finance pandas-datareader

# TA-Lib
RUN cd /tmp; \
	wget http://sourceforge.net/projects/ta-lib/files/ta-lib/0.4.0/ta-lib-0.4.0-src.tar.gz; \
	tar -xzf ta-lib-0.4.0-src.tar.gz; \
	cd ta-lib; \
	./configure ; make; make install; \
	cd ..; \
	rm ta-lib-0.4.0-src.tar.gz; \
	rm -rf ta-lib
RUN pip install --no-cache-dir TA-Lib

RUN pip install --no-cache-dir pyalgotrade==0.18

RUN apk del make cmake gcc g++ gfortran && \
    rm -rf /var/cache/apk/*

RUN mkdir /opt
RUN mkdir /opt/application

VOLUME ["/opt/application", "/opt/neo4j-imports"]
WORKDIR /opt/application

CMD ipython
