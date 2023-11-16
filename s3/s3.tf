resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.tags["project"]}-${var.tags["Application"]}-${var.tags["environment"]}-alieu-hakim"

 tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["Application"]}-${var.tags["environment"]}-s3_bucket"
  })

}