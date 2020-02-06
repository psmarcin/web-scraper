
.PHONY: build
build:
	cd src && npm run build

.PHONY: publish
publish: build
	cd spec && terraform apply
