ALTER TABLE thecloudbee.dhcp_logs ADD
  PARTITION (date = '2021-01-10') LOCATION 's3://the-cloud-bee-security-logs/network_logs/dhcp/2021-01-10/'
  PARTITION (date = '2021-01-11') LOCATION 's3://the-cloud-bee-security-logs/network_logs/dhcp/2021-01-11/';