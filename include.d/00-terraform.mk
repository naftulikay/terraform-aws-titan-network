#!/usr/bin/make -f

SHELL:=$(shell which bash)
GIT_ROOT:=$(shell git rev-parse --show-toplevel)

.PHONY: init get validate lint plan

init:
	@echo '*** terraform init...' >&2
	@if ! terraform init &>/dev/null ; then \
		terraform init ; \
	fi

get: init
	@echo '*** terraform get...' >&2
	@terraform get

validate: init
	@echo '*** terraform validate...' >&2
	@terraform validate

lint:
	@tflint -c $(GIT_ROOT)/.tflint.hcl -f compact


plan: init get
	@echo '*** terraform plan...' >&2
	@terraform plan