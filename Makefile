.PHONY: build exec

build:
	docker build --rm -t cghooks .

exec:
	docker run --rm -it cghooks bash

release:
	git tag -as ${VERSION} -m '${VERSION}'
	git tag -v ${VERSION}
	git push origin ${VERSION}
