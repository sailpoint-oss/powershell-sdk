---
id: account-delete-request-input
title: AccountDeleteRequestInput
pagination_label: AccountDeleteRequestInput
sidebar_label: AccountDeleteRequestInput
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountDeleteRequestInput', 'AccountDeleteRequestInput'] 
slug: /tools/sdk/powershell/accountdeletionrequests/models/account-delete-request-input
tags: ['SDK', 'Software Development Kit', 'AccountDeleteRequestInput', 'AccountDeleteRequestInput']
---


# AccountDeleteRequestInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comments** | **String** | Reason for deleting the account. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountDeleteRequestInput = Initialize-AccountDeleteRequestInput  -Comments Requesting account deletion request
```

- Convert the resource to JSON
```powershell
$AccountDeleteRequestInput | ConvertTo-JSON
```


[[Back to top]](#) 

