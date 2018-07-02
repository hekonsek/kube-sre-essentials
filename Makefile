all: build

build:
	helm package . --destination repository
	helm repo index repository