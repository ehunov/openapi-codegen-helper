i=https://api.swaggerhub.com/apis/asuran/GINS/1.0.0
o=gins-php-client
g=php

generate:
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
        -i $(i) \
        -g $(g) \
        -o /local/out/$(o) \
        -c /local/$(g).local.json

config-help:
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli config-help -g $(g)

help:
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli help
