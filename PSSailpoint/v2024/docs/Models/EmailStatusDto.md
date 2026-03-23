---
id: v2024-email-status-dto
title: EmailStatusDto
pagination_label: EmailStatusDto
sidebar_label: EmailStatusDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EmailStatusDto', 'V2024EmailStatusDto'] 
slug: /tools/sdk/powershell/v2024/models/email-status-dto
tags: ['SDK', 'Software Development Kit', 'EmailStatusDto', 'V2024EmailStatusDto']
---


# EmailStatusDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique identifier for the verified sender address | [optional] 
**Email** | **String** | The verified sender email address | [optional] 
**IsVerifiedByDomain** | **Boolean** | Whether the sender address is verified by domain | [optional] [default to $false]
**VerificationStatus** |  **Enum** [  "PENDING",    "SUCCESS",    "FAILED",    "NA" ] | The verification status of the sender address | [optional] 
**Region** | **String** | The AWS SES region the sender address is associated with | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailStatusDto = Initialize-V2024EmailStatusDto  -Id null `
 -Email sender@example.com `
 -IsVerifiedByDomain false `
 -VerificationStatus SUCCESS `
 -Region us-east-1
```

- Convert the resource to JSON
```powershell
$EmailStatusDto | ConvertTo-JSON
```


[[Back to top]](#) 

