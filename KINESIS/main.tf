
resource "aws_kinesis_stream" "naveed_stream" {
  name             = "naveed-1Stream"
  shard_count      = 1
  retention_period = 48

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  stream_mode_details {
    stream_mode = "PROVISIONED"
  }

  tags = {
    Environment = "dev"
  }
}