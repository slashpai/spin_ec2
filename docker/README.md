# docker ec2 template

Spin up ec2 instances with [git](https://git-scm.com/) and [docker](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html
) installed. [cloud-init.sh](cloud-init.sh) script currently supports RHEL based systems. This [template](docker.tf) uses aws [profile way](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#shared-credentials-file) for specifying provider details. This is preferred way if you will be running terraform from local machine and you don't checkin access keys by mistake in source code repositories. If you want to follow other methods, you would require to update the template accordingly. To setup aws cli profile, checkout the [guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html).

## Why this template?

This template was created to quickly spinup ec2 machines with docker and git installed for taking training on docker for `n` number of users.

## Usage

### Create and update input variables

- Make a copy of [input.auto.tfvars.example](input.auto.tfvars.example) and name it as say input.auto.tfvars. Update the variable values as required.

### Init

```go
terraform init
```

### Review changes

```go
terraform plan
```

### Apply changes

```go
terraform apply
```

### Terminate instances and resources created by template

```go
terraform destroy
```
