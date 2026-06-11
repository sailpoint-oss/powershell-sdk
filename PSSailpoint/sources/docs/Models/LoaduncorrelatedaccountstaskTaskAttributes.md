---
id: loaduncorrelatedaccountstask-task-attributes
title: LoaduncorrelatedaccountstaskTaskAttributes
pagination_label: LoaduncorrelatedaccountstaskTaskAttributes
sidebar_label: LoaduncorrelatedaccountstaskTaskAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LoaduncorrelatedaccountstaskTaskAttributes', 'LoaduncorrelatedaccountstaskTaskAttributes'] 
slug: /tools/sdk/powershell/sourcesv1/models/loaduncorrelatedaccountstask-task-attributes
tags: ['SDK', 'Software Development Kit', 'LoaduncorrelatedaccountstaskTaskAttributes', 'LoaduncorrelatedaccountstaskTaskAttributes']
---


# LoaduncorrelatedaccountstaskTaskAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QpocJobId** | **String** | The id of qpoc job | [optional] 
**TaskStartDelay** | [**AnyType**](any-type) | the task start delay value | [optional] 

## Examples

- Prepare the resource
```powershell
$LoaduncorrelatedaccountstaskTaskAttributes = Initialize-LoaduncorrelatedaccountstaskTaskAttributes  -QpocJobId 5d303d46-fc51-48cd-9c6d-4e211e3ab63c `
 -TaskStartDelay 
```

- Convert the resource to JSON
```powershell
$LoaduncorrelatedaccountstaskTaskAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

