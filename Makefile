
has_gcloud=$(shell gcloud version 2> /dev/null)
has_terraform=$(shell terraform version 2> /dev/null)
tf_dir=./tf

default:
ifeq "$(has_terraform)" ""
	$(error "You need the latest terraform, if you're using homebrew, you can 'brew install terraform'")
endif
ifeq "$(has_gcloud)" ""
	$(error "You need the latest gcloud / google-sdk binaries")
endif

.PHONY: plan
plan: default
	@terraform plan $(tf_dir)

.PHONY: apply
apply: default
	@terraform apply $(tf_dir)

.PHONY: destroy
destroy: default
	@terraform destroy $(tf_dir)
