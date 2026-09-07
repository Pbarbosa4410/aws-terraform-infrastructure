.PHONY: init fmt validate plan apply output destroy clean

TERRAFORM_DIR=terraform

init:
	terraform -chdir=$(TERRAFORM_DIR) init

fmt:
	terraform -chdir=$(TERRAFORM_DIR) fmt -recursive

validate:
	terraform -chdir=$(TERRAFORM_DIR) validate

plan:
	terraform -chdir=$(TERRAFORM_DIR) plan

apply:
	terraform -chdir=$(TERRAFORM_DIR) apply

output:
	terraform -chdir=$(TERRAFORM_DIR) output

destroy:
	terraform -chdir=$(TERRAFORM_DIR) destroy

clean:
	rm -rf $(TERRAFORM_DIR)/.terraform
	rm -f $(TERRAFORM_DIR)/*.tfplan
	rm -f $(TERRAFORM_DIR)/*.plan