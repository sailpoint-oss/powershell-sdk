---
id: v2026-access-request-config
title: AccessRequestConfig
pagination_label: AccessRequestConfig
sidebar_label: AccessRequestConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequestConfig', 'V2026AccessRequestConfig'] 
slug: /tools/sdk/powershell/v2026/models/access-request-config
tags: ['SDK', 'Software Development Kit', 'AccessRequestConfig', 'V2026AccessRequestConfig']
---


# AccessRequestConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalsMustBeExternal** | **Boolean** | If this is true, approvals must be processed by an external system. Also, if this is true, it blocks Request Center access requests and returns an error for any user who isn't an org admin. | [optional] [default to $false]
**AutoApprovalEnabled** | **Boolean** | If this is true and the requester and reviewer are the same, the request is automatically approved. | [optional] [default to $false]
**ReauthorizationEnabled** | **Boolean** | If this is true, reauthorization will be enforced for appropriately configured access items. Enablement of this feature is currently in a limited state. | [optional] [default to $false]
**RequestOnBehalfOfConfig** | [**RequestOnBehalfOfConfig**](request-on-behalf-of-config) |  | [optional] 
**EntitlementRequestConfig** | [**EntitlementRequestConfig**](entitlement-request-config) |  | [optional] 
**GovGroupVisibilityEnabled** | **Boolean** | If this is true, requesters and requested-for users will be able to see the names of governance group members when a request is awaiting the group's approval. Up to the first 10 members of the group will be listed. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$AccessRequestConfig = Initialize-V2026AccessRequestConfig  -ApprovalsMustBeExternal true `
 -AutoApprovalEnabled true `
 -ReauthorizationEnabled true `
 -RequestOnBehalfOfConfig null `
 -EntitlementRequestConfig null `
 -GovGroupVisibilityEnabled true
```

- Convert the resource to JSON
```powershell
$AccessRequestConfig | ConvertTo-JSON
```


[[Back to top]](#) 

