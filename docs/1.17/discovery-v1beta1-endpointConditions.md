---
permalink: /1.17/discovery/v1beta1/endpointConditions/
---

# package endpointConditions

EndpointConditions represents the current condition of an endpoint.

## Index

* [`fn withReady(ready)`](#fn-withready)

## Fields

### fn withReady

```ts
withReady(ready)
```

ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready.