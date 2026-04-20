---
id: nerm-get-identity-proofing-results200-response
title: GetIdentityProofingResults200Response
pagination_label: GetIdentityProofingResults200Response
sidebar_label: GetIdentityProofingResults200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetIdentityProofingResults200Response', 'NERMGetIdentityProofingResults200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-identity-proofing-results200-response
tags: ['SDK', 'Software Development Kit', 'GetIdentityProofingResults200Response', 'NERMGetIdentityProofingResults200Response']
---


# GetIdentityProofingResults200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityProofingResults** | [**[]IdentityProofingResult**](identity-proofing-result) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetIdentityProofingResults200Response = Initialize-NERMGetIdentityProofingResults200Response  -IdentityProofingResults null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetIdentityProofingResults200Response | ConvertTo-JSON
```


[[Back to top]](#) 

