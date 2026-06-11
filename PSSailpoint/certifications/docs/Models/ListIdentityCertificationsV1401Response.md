---
id: list-identity-certifications-v1401-response
title: ListIdentityCertificationsV1401Response
pagination_label: ListIdentityCertificationsV1401Response
sidebar_label: ListIdentityCertificationsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListIdentityCertificationsV1401Response', 'ListIdentityCertificationsV1401Response'] 
slug: /tools/sdk/powershell/certificationsv1/models/list-identity-certifications-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListIdentityCertificationsV1401Response', 'ListIdentityCertificationsV1401Response']
---


# ListIdentityCertificationsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListIdentityCertificationsV1401Response = Initialize-ListIdentityCertificationsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListIdentityCertificationsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

