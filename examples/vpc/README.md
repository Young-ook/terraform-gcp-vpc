[[English](README.md)]

# Google Cloud VPC
A [Virtual Private Cloud (VPC)](https://cloud.google.com/vpc/docs/vpc) network is a virtual version of a physical network, implemented inside of Google's production network, using [Andromeda](https://www.usenix.org/system/files/conference/nsdi18/nsdi18-dalton.pdf).

## Download example
Download this example on your workspace
```sh
git clone https://github.com/Young-ook/terraform-gcp-vpc
cd terraform-gcp-vpc/examples/vpc
```

## Setup
This is an example to explain how to setup an Google Cloud VPC. [This](https://github.com/Young-ook/terraform-gcp-vpc/blob/main/examples/vpc/main.tf) is the example of terraform configuration file. Check out and apply it using terraform command.

If you don't have the terraform tool in your environment, go to the main [page](https://github.com/Young-ook/terraform-gcp-vpc) of this repository and follow the installation instructions.

Run terraform:
```
terraform init
terraform apply -var-file fixture.tc1.tfvars
```
Also you can use the `-var-file` option for customized paramters when you run the terraform plan/apply command.
```
terraform plan -var-file fixture.tc1.tfvars
terraform apply -var-file fixture.tc1.tfvars
```

## Clean up
Run terraform:
```
$ terraform destroy
```
Don't forget you have to use the `-var-file` option when you run terraform destroy command to delete all resources created with extra variable files.
```
$ terraform destroy -var-file fixture.tc1.tfvars
```
