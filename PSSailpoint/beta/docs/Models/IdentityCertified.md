---
id: beta-identity-certified
title: IdentityCertified
pagination_label: IdentityCertified
sidebar_label: IdentityCertified
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityCertified', 'BetaIdentityCertified'] 
slug: /tools/sdk/powershell/beta/models/identity-certified
tags: ['SDK', 'Software Development Kit', 'IdentityCertified', 'BetaIdentityCertified']
---


# IdentityCertified

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertificationId** | **String** | the id of the certification item | [required]
**CertificationName** | **String** | the certification item name | [required]
**SignedDate** | **String** | the date ceritification was signed | [optional] 
**Certifiers** | [**[]CertifierResponse**](certifier-response) | this field is deprecated and may go away | [optional] 
**Reviewers** | [**[]CertifierResponse**](certifier-response) | The list of identities who review this certification | [optional] 
**Signer** | [**CertifierResponse**](certifier-response) |  | [optional] 
**EventType** | **String** | the event type | [optional] 
**DateTime** | **String** | the date of event | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityCertified = Initialize-BetaIdentityCertified  -CertificationId 2c91808a77ff216301782327a50f09bf `
 -CertificationName Cert name `
 -SignedDate 2019-03-08T22:37:33.901Z `
 -Certifiers [{id=8a80828f643d484f01643e14202e206f, displayName=John Snow}] `
 -Reviewers [{id=8a80828f643d484f01643e14202e206f, displayName=John Snow}] `
 -Signer null `
 -EventType IdentityCertified `
 -DateTime 2019-03-08T22:37:33.901Z
```

- Convert the resource to JSON
```powershell
$IdentityCertified | ConvertTo-JSON
```


[[Back to top]](#) 

