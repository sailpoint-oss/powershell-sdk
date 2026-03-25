---
id: v2026-forward-approval-dto
title: ForwardApprovalDto
pagination_label: ForwardApprovalDto
sidebar_label: ForwardApprovalDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ForwardApprovalDto', 'V2026ForwardApprovalDto'] 
slug: /tools/sdk/powershell/v2026/models/forward-approval-dto
tags: ['SDK', 'Software Development Kit', 'ForwardApprovalDto', 'V2026ForwardApprovalDto']
---


# ForwardApprovalDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewOwnerId** | **String** | The Id of the new owner | [required]
**Comment** | **String** | The comment provided by the forwarder | [required]

## Examples

- Prepare the resource
```powershell
$ForwardApprovalDto = Initialize-V2026ForwardApprovalDto  -NewOwnerId 2c91808568c529c60168cca6f90c1314 `
 -Comment 2c91808568c529c60168cca6f90c1313
```

- Convert the resource to JSON
```powershell
$ForwardApprovalDto | ConvertTo-JSON
```


[[Back to top]](#) 

