---
id: list-accounts-v1401-response
title: ListAccountsV1401Response
pagination_label: ListAccountsV1401Response
sidebar_label: ListAccountsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListAccountsV1401Response', 'ListAccountsV1401Response'] 
slug: /tools/sdk/powershell/accountsv1/models/list-accounts-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListAccountsV1401Response', 'ListAccountsV1401Response']
---


# ListAccountsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListAccountsV1401Response = Initialize-ListAccountsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListAccountsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

