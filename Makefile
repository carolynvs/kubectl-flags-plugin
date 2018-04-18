default: deploy test

deploy:
	mkdir -p ~/.kube/plugins/flags
	cp plugin.yaml ~/.kube/plugins/flags/
	@echo

test:
	kubectl plugin flags --foo=bar --output=json | grep KUBECTL
