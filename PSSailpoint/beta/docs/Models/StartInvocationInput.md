---
id: beta-start-invocation-input
title: StartInvocationInput
pagination_label: StartInvocationInput
sidebar_label: StartInvocationInput
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'StartInvocationInput', 'BetaStartInvocationInput'] 
slug: /tools/sdk/powershell/beta/models/start-invocation-input
tags: ['SDK', 'Software Development Kit', 'StartInvocationInput', 'BetaStartInvocationInput']
---


# StartInvocationInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TriggerId** | **String** | Trigger ID | [optional] 
**VarInput** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | Trigger input payload. Its schema is defined in the trigger definition. | [optional] 
**ContentJson** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | JSON map of invocation metadata | [optional] 

## Examples

- Prepare the resource
```powershell
$StartInvocationInput = Initialize-BetaStartInvocationInput  -TriggerId idn:access-requested `
 -VarInput {identityId=201327fda1c44704ac01181e963d463c} `
 -ContentJson {workflowId=1234}
```

- Convert the resource to JSON
```powershell
$StartInvocationInput | ConvertTo-JSON
```


[[Back to top]](#) 

