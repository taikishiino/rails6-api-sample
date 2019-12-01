# terraform

```sh
cd terraform

# aws cliプロファイル作成

# terraform.tfvarsを配置

# 初期化
terraform init

# 環境切り替え
terraform env select pro

# STS:GetSessionToken取得
aws sts get-session-token --duration-seconds 3600 --profile taiki

# 変更反映確認
terraform plan

# 変更反映
terraform apply

```