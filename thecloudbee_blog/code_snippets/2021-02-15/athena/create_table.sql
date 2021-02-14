CREATE EXTERNAL TABLE IF NOT EXISTS thecloudbee.dhcp_logs (
  `ts` string,
  `uid` string,
  `orig_h` string,
  `orig_p` int,
  `resp_h` string,
  `resp_p` int,
  `mac` string,
  `assigned_ip` string,
  `lease_time` double,
  `trans_id` bigint
) PARTITIONED BY (
  date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1',
  'input.regex' = '([0-9\\.]*)\\s([^\\s]*)\\s([0-9\\.]*)\\s([0-9]*)\\s([0-9\\.]*)\\s([0-9]*)\\s([^\\s]*)\\s([0-9\\.]*)\\s([0-9\\.]*)\\s([0-9]*)'
) LOCATION 's3://the-cloud-bee-security-logs/network_logs/dhcp/';