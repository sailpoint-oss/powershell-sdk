---
id: form-instance-recipient
title: FormInstanceRecipient
pagination_label: FormInstanceRecipient
sidebar_label: FormInstanceRecipient
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'FormInstanceRecipient', 'FormInstanceRecipient'] 
slug: /tools/sdk/powershell/customforms/models/form-instance-recipient
tags: ['SDK', 'Software Development Kit', 'FormInstanceRecipient', 'FormInstanceRecipient']
---


# FormInstanceRecipient

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID is a unique identifier | [optional] 
**Type** |  **Enum** [  "IDENTITY" ] | Type is a FormInstanceRecipientType value IDENTITY FormInstanceRecipientIdentity | [optional] 

## Examples

- Prepare the resource
```powershell
$FormInstanceRecipient = Initialize-FormInstanceRecipient  -Id 00000000-0000-0000-0000-000000000000 `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$FormInstanceRecipient | ConvertTo-JSON
```


[[Back to top]](#) 

