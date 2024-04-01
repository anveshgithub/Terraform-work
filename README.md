# Terraform-work
this implements and includes Tech-stack i,e.
application loadbalancer
targetgroups
autoscalinggroup
launchtemplate
instanceprofile
securitygroups
vpc and lot more

this setup is potentially based with modularised concept by using terraform modules which refers to reusability, maintainability, flexibility.

easily we can use this piece of modules at any environment where we required with same configurtion

contents:

modules:  which contain all resource modules we call in root module

Bandgi-assesment.tf: root module where we call all the child modules

outputs.tf: represents the values created by each module and we refer for identification of resources



