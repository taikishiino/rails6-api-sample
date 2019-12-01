// modules/output.tfで定義したoutputを呼び出す
output "alb" {
  value = "${module.base.alb}"
}