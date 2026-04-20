---
id: nerm-delegation
title: Delegation
pagination_label: Delegation
sidebar_label: Delegation
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Delegation', 'NERMDelegation'] 
slug: /tools/sdk/powershell/nerm/models/delegation
tags: ['SDK', 'Software Development Kit', 'Delegation', 'NERMDelegation']
---


# Delegation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the delegation | [optional] 
**DelegatorId** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | The id of the delegator user | [optional] 
**DelegateId** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | The id of the delegate user | [optional] 
**Expiration** | **System.DateTime** | The expiration date of the delegation | [optional] 
**Expired** | **Boolean** | Indicates if the delegation is expired | [optional] 
**CreatedAt** | **System.DateTime** | The date-time the record created. | [optional] [readonly] 
**UpdatedAt** | **System.DateTime** | The date-time the record was last updated. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Delegation = Initialize-NERMDelegation  -Id ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -DelegatorId 12345678-1234-5678-1234-123456789012 `
 -DelegateId 87654321-4321-6789-4321-210987654321 `
 -Expiration 2023-10-01T12:00Z `
 -Expired false `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$Delegation | ConvertTo-JSON
```


[[Back to top]](#) 

