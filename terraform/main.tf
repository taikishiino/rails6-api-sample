// 変数を定義します。terraform.tfvarsで値を設定している場合はその値が設定されます。
variable "access_key" {}
variable "secret_key" {}
variable "token" {}
variable "db_user" {}
variable "db_pass" {}
variable "region" { default = "ap-northeast-1"}

// s3にはtfstateを保存するS3バケットの指定及び指定したs3にアクセスできるaws credentialsのprofileを指定してください。
terraform {
  backend "s3" {
    bucket = "geekhouse"  // tfstateを保存するS3を指定
    key    = "terraform.tfstate" // tfstate名
    region     = "ap-northeast-1"  // ここではvariableで定義した変数が使えないため注意！
    profile = "taiki" // s3にアクセスできるアカウントのawsプロファイルを指定
  }
}

// ここではプロバイダーの宣言としてawsを定義し、IAMの認証情報を設定します。
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  token = "${var.token}"
  region     = "${var.region}"
}

// modulesのソースを指定。terraform.tfvarsで設定したdb_user, db_passをdb定義用のテンプレートファイルに渡します。
module "base" {
  region                            = "${var.region}"
  # db_user                           = "${var.db_user}"
  # db_pass                           = "${var.db_pass}"
  source = "./modules"
}