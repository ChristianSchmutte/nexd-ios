# Initial Setup

```
$ pod install
```

# Update REST client

```
$ swagger-codegen generate -i http://localhost:3001/api/docs-json -l swift5  --additional-properties podHomepage=https://github.com/NearBuyVsVirus/nearbuy-ios,podSummary="Swagger Client",responseAs=RxSwift
```


# TODOs:

- https support