---
id: nermv2025-delegation2
title: Delegation2
pagination_label: Delegation2
sidebar_label: Delegation2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Delegation2', 'NERMV2025Delegation2'] 
slug: /tools/sdk/powershell/nermv2025/models/delegation2
tags: ['SDK', 'Software Development Kit', 'Delegation2', 'NERMV2025Delegation2']
---


# Delegation2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DelegatorId** | **String** | The id of the delegator | [optional] 
**DelegateId** | **String** | The id of the delegate | [optional] 
**Expiration** | **System.DateTime** | The expiration date of the delegation | [optional] 

## Examples

- Prepare the resource
```powershell
$Delegation2 = Initialize-NERMV2025Delegation2  -DelegatorId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -DelegateId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -Expiration 2023-10-01T12:00Z
```

- Convert the resource to JSON
```powershell
$Delegation2 | ConvertTo-JSON
```


[[Back to top]](#) 

