# Terraform Bootstrap

Assuming your AWS CLI is configured properly:
```sh
aws cloudformation deploy \
--stack-name TerraformBootstrap \
--template tf_bootstrap/template.yaml \
--no-execute-changeset
```

Then go ahead and review the created changeset. Execute at your discretion.