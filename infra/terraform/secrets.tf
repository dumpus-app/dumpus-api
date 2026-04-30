resource "random_password" "postgres" {
  length           = 32
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "aws_secretsmanager_secret" "postgres_password" {
  name                    = "${local.name}/postgres/password"
  recovery_window_in_days = 7
}

resource "aws_secretsmanager_secret_version" "postgres_password" {
  secret_id     = aws_secretsmanager_secret.postgres_password.id
  secret_string = random_password.postgres.result
}

resource "aws_secretsmanager_secret" "postgres_url" {
  name                    = "${local.name}/postgres/url"
  description             = "SQLAlchemy URL consumed by the app"
  recovery_window_in_days = 7
}

resource "aws_secretsmanager_secret_version" "postgres_url" {
  secret_id = aws_secretsmanager_secret.postgres_url.id
  secret_string = format(
    "postgresql+psycopg2://%s:%s@%s:%d/%s",
    var.postgres_username,
    random_password.postgres.result,
    aws_db_instance.main.address,
    aws_db_instance.main.port,
    var.postgres_db_name,
  )
}

resource "aws_secretsmanager_secret" "discord_secret" {
  name                    = "${local.name}/app/discord-secret"
  recovery_window_in_days = 7
}

resource "aws_secretsmanager_secret_version" "discord_secret" {
  secret_id     = aws_secretsmanager_secret.discord_secret.id
  secret_string = var.discord_secret
}

resource "aws_secretsmanager_secret" "diswho_jwt_secret" {
  name                    = "${local.name}/app/diswho-jwt-secret"
  recovery_window_in_days = 7
}

resource "aws_secretsmanager_secret_version" "diswho_jwt_secret" {
  secret_id     = aws_secretsmanager_secret.diswho_jwt_secret.id
  secret_string = var.diswho_jwt_secret
}
