# OpenApi Codegen Helper

1. Create/copy .local.json config file. To see all available options for `php` generator use: 

    ```shell script
    make config-help g=php
    ```

2. Run

    ```shell script
    make generate i=https://api.swaggerhub.com/apis/asuran/GINS/1.0.0
    ```

    ###### Available options:
    
    `i` - input openapi/swagger documentation url
    
    `o` - output dir
    
    `g` - generator name

    ###### Example:
    
    ```shell script
    cp go.json go.local.json
    make generate i=https://api.swaggerhub.com/apis/asuran/GINS/1.0.0 o=go-gins-client g=go
    ```

3. Configure `.openapi-generator-ignore` file inside output directory
