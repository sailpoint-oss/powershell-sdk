---
id: workflowexecutionhistory
title: Workflowexecutionhistory
pagination_label: Workflowexecutionhistory
sidebar_label: Workflowexecutionhistory
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Workflowexecutionhistory', 'Workflowexecutionhistory'] 
slug: /tools/sdk/powershell/workflowsv1/models/workflowexecutionhistory
tags: ['SDK', 'Software Development Kit', 'Workflowexecutionhistory', 'Workflowexecutionhistory']
---


# Workflowexecutionhistory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Definition** | [**SystemCollectionsHashtable**](system-collections-hashtable) |  | [optional] 
**History** | [**SystemCollectionsHashtable**](system-collections-hashtable) |  | [optional] 
**Trigger** | [**SystemCollectionsHashtable**](system-collections-hashtable) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Workflowexecutionhistory = Initialize-Workflowexecutionhistory  -Definition null `
 -History null `
 -Trigger null
```

- Convert the resource to JSON
```powershell
$Workflowexecutionhistory | ConvertTo-JSON
```


[[Back to top]](#) 

