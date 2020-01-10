INPUTFILE=https://api.swaggerhub.com/apis/asuran/GINS/1.0.0
OUTPUTDIR=/local/out/php
LANG=php
PACKAGE=gins-client
VERSION=1.0.0

gen:
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
        -i $(INPUTFILE) \
        -g $(LANG) \
        -o $(OUTPUTDIR) \
        -c /local/$(LANG).json

help:
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli config-help -g $(LANG)
