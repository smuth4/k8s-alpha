---
permalink: /1.15/core/v1/windowsSecurityContextOptions/
---

# package windowsSecurityContextOptions

WindowsSecurityContextOptions contain Windows-specific options and credentials.

## Index

* [`fn withGmsaCredentialSpec(gmsaCredentialSpec)`](#fn-withgmsacredentialspec)
* [`fn withGmsaCredentialSpecName(gmsaCredentialSpecName)`](#fn-withgmsacredentialspecname)

## Fields

### fn withGmsaCredentialSpec

```ts
withGmsaCredentialSpec(gmsaCredentialSpec)
```

GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.

### fn withGmsaCredentialSpecName

```ts
withGmsaCredentialSpecName(gmsaCredentialSpecName)
```

GMSACredentialSpecName is the name of the GMSA credential spec to use. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.