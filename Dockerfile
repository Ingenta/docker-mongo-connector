# VERSION 0.0.2
# 中国科学项目-Mongo-Connector
FROM python:2.7

MAINTAINER 蒋凯 "kai.jiang@digitalpublishing.cn"

RUN pip install mongo-connector
ENTRYPOINT python2 /usr/local/lib/python2.7/site-packages/mongo_connector/connector.py -m $MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT -t http://$SOLR_PORT_8983_TCP_ADDR:$SOLR_PORT_8983_TCP_PORT/solr/articles -o oplog_progress.txt -n meteor.articles -d solr_doc_manager --auto-commit-interval=0
