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

After you execute the changeset, you should be able to run 
```sh
gp idp login aws --role-arn arn:aws:iam::887820825936:role/bootstrap/gitpod/Gitpod
```