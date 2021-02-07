POST /tcb-views/_shrink/tcb-views-compressed
{
  "settings": {
    "index.number_of_replicas": 1,
    "index.number_of_shards": 3,
    "index.codec": "best_compression"
  }
}