---
id: v2024-domain-status-dto
title: DomainStatusDto
pagination_label: DomainStatusDto
sidebar_label: DomainStatusDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DomainStatusDto', 'V2024DomainStatusDto'] 
slug: /tools/sdk/powershell/v2024/models/domain-status-dto
tags: ['SDK', 'Software Development Kit', 'DomainStatusDto', 'V2024DomainStatusDto']
---


# DomainStatusDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | New UUID associated with domain to be verified | [optional] 
**Domain** | **String** | A domain address | [optional] 
**DkimEnabled** | **Boolean** | DKIM is enabled for this domain | [optional] [default to $false]
**DkimTokens** | **[]String** | DKIM tokens required for authentication | [optional] 
**DkimVerificationStatus** | **String** | Status of DKIM authentication | [optional] 
**Region** | **String** | The AWS SES region the domain is associated with | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainStatusDto = Initialize-V2024DomainStatusDto  -Id 123b45b0-aaaa-bbbb-a7db-123456a56abc `
 -Domain sailpoint.com `
 -DkimEnabled true `
 -DkimTokens [token1, token2, token3] `
 -DkimVerificationStatus PENDING `
 -Region us-east-1
```

- Convert the resource to JSON
```powershell
$DomainStatusDto | ConvertTo-JSON
```


[[Back to top]](#) 

