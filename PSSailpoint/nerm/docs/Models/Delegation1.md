---
id: nerm-delegation1
title: Delegation1
pagination_label: Delegation1
sidebar_label: Delegation1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Delegation1', 'NERMDelegation1'] 
slug: /tools/sdk/powershell/nerm/models/delegation1
tags: ['SDK', 'Software Development Kit', 'Delegation1', 'NERMDelegation1']
---


# Delegation1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DelegatorId** | **String** | The id of the delegator | [optional] 
**DelegateId** | **String** | The id of the delegate | [optional] 
**Expiration** | **System.DateTime** | The expiration date of the delegation | [optional] 

## Examples

- Prepare the resource
```powershell
$Delegation1 = Initialize-NERMDelegation1  -DelegatorId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -DelegateId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -Expiration 2023-10-01T12:00Z
```

- Convert the resource to JSON
```powershell
$Delegation1 | ConvertTo-JSON
```


[[Back to top]](#) 

