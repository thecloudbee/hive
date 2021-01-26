ansible-playbook \
    --inventory hosts/hosts \
    --limit 'staging' \
    playbook_kafka_cluster.yml
