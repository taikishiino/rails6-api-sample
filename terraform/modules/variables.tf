variable "name" {
  default = "geekhouse"
}

variable "dns" {
  default = "example.com"
}

variable "bucket" {
  default = "geekhouse"
}
variable "bucket_domain" {
  default = "geekhouse.s3.amazonaws.com"
}
variable "subnet_public_a" {
  default = "172.31.32.0/20"
}

variable "subnet_public_c" {
  default = "172.31.16.0/20"
}

// 既存のVPC使う
variable "vpc_id" {
  default = "vpc-04ed764791252b8aa"
}

variable "region" {}

variable "alb_certificate_arn" {
  default = "arn:aws:acm:ap-northeast-1:xxxxx:certificate/zzzzz1"
}

variable "cf_certificate_arn" {
  default = "arn:aws:acm:us-east-1:yyyyy:certificate/zzzzz2"
}