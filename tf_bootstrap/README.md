# Terraform Bootstrap

Assuming your AWS CLI is configured properly:
```sh
aws cloudformation deploy \
--stack-name TerraformBootstrap \
--template tf_bootstrap/template.yaml \
--capabilities CAPABILITY_NAMED_IAM \
--no-execute-changeset
```

Then go ahead and review the created changeset. Execute at your discretion.

After you execute the changeset, either one should work fine:
```sh
aws sts assume-role-with-web-identity \
--role-arn arn:aws:iam::887820825936:role/bootstrap/gitpod/Gitpod \
--role-session-name JohnKhandygo \
--web-identity-token $(gp idp token --audience sts.amazonaws.com)
```
or
```sh
gp idp login aws \
-- profile gitpod \
--role-arn arn:aws:iam::887820825936:role/bootstrap/gitpod/Gitpod
```

> [!NOTE]
> The latter command will not work if you set a preference for output format in `~/.aws/config` to something other than json