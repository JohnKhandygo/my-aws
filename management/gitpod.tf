# before remote backend is configured:
# 1. tf init
# 2. tf import aws_iam_openid_connect_provider.gitpod arn:aws:iam::887820825936:oidc-provider/services.gitpod.io/idp
# ...
resource "aws_iam_openid_connect_provider" "gitpod" {
  url = "https://services.gitpod.io/idp"

  client_id_list = [
    "sts.amazonaws.com",
  ]

  thumbprint_list = ["08745487e891c19e3078c1f2a07e452950ef36f6"]
}