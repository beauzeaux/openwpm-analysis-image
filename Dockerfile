FROM ipython/notebook
MAINTAINER Nick Beaulieu, beauzeaux@outlook.com
RUN apt-get update && \
	apt-get install -y \
		wget 
# install spark 
RUN mkdir -p /opt/spark && \
	cd /opt/spark && \
	wget http://d3kbcqa49mib13.cloudfront.net/spark-1.3.0-bin-hadoop2.4.tgz \
	-O - | tar -xz --strip-components=1
# set spark paths
ENV PYTHONPATH $PYTHONPATH:/opt/spark/python/lib/py4j-0.8.2.1-src.zip:/opt/spark/python
ENV SPARK_HOME /opt/spark/
