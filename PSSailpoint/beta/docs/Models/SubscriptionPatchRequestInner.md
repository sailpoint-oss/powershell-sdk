---
id: beta-subscription-patch-request-inner
title: SubscriptionPatchRequestInner
pagination_label: SubscriptionPatchRequestInner
sidebar_label: SubscriptionPatchRequestInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SubscriptionPatchRequestInner', 'BetaSubscriptionPatchRequestInner'] 
slug: /tools/sdk/powershell/beta/models/subscription-patch-request-inner
tags: ['SDK', 'Software Development Kit', 'SubscriptionPatchRequestInner', 'BetaSubscriptionPatchRequestInner']
---


# SubscriptionPatchRequestInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** |  **Enum** [  "add",    "remove",    "replace",    "move",    "copy" ] | The operation to be performed | [required]
**Path** | **String** | A string JSON Pointer representing the target path to an element to be affected by the operation | [required]
**Value** | [**SubscriptionPatchRequestInnerValue**](subscription-patch-request-inner-value) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubscriptionPatchRequestInner = Initialize-PSSailpoint.BetaSubscriptionPatchRequestInner  -Op replace `
 -Path /description `
 -Value null
$SubscriptionPatchRequestInner = @"{  "Op": "replace", "Path": "/description", "Value": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToSubscriptionPatchRequestInner -Json $SubscriptionPatchRequestInner
```


[[Back to top]](#) 

