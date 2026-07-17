---
id: access-request-config2
title: AccessRequestConfig2
pagination_label: AccessRequestConfig2
sidebar_label: AccessRequestConfig2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequestConfig2', 'AccessRequestConfig2'] 
slug: /tools/sdk/powershell/accessrequests/models/access-request-config2
tags: ['SDK', 'Software Development Kit', 'AccessRequestConfig2', 'AccessRequestConfig2']
---


# AccessRequestConfig2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalsMustBeExternal** | **Boolean** | If this is true, approvals must be processed by an external system. Also, if this is true, it blocks Request Center access requests and returns an error for any user who isn't an org admin. | [optional] [default to $false]
**ReauthorizationEnabled** | **Boolean** | If this is true, reauthorization will be enforced for appropriately configured access items. Enablement of this feature is currently in a limited state. | [optional] [default to $false]
**RequestOnBehalfOfConfig** | [**RequestOnBehalfOfConfig2**](request-on-behalf-of-config2) |  | [optional] 
**EntitlementRequestConfig** | [**EntitlementRequestConfig2**](entitlement-request-config2) |  | [optional] 
**GovGroupVisibilityEnabled** | **Boolean** | If this is true, requesters and requested-for users will be able to see the names of governance group members when a request is awaiting the group's approval. Up to the first 10 members of the group will be listed. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$AccessRequestConfig2 = Initialize-AccessRequestConfig2  -ApprovalsMustBeExternal true `
 -ReauthorizationEnabled true `
 -RequestOnBehalfOfConfig null `
 -EntitlementRequestConfig null `
 -GovGroupVisibilityEnabled true
```

- Convert the resource to JSON
```powershell
$AccessRequestConfig2 | ConvertTo-JSON
```


[[Back to top]](#) 

