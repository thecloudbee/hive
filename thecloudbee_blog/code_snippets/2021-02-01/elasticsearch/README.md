##References

https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html

https://www.elastic.co/guide/en/kibana/current/docker.html

```
docker run --network elasticsearch_default --link thecloudbee01:elasticsearch -p 5601:5601 docker.elastic.co/kibana/kibana:7.10.2
```

