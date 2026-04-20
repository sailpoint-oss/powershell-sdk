---
id: nerm-ldap-action-workflow-action-value-builders-attributes
title: LdapActionWorkflowActionValueBuildersAttributes
pagination_label: LdapActionWorkflowActionValueBuildersAttributes
sidebar_label: LdapActionWorkflowActionValueBuildersAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LdapActionWorkflowActionValueBuildersAttributes', 'NERMLdapActionWorkflowActionValueBuildersAttributes'] 
slug: /tools/sdk/powershell/nerm/models/ldap-action-workflow-action-value-builders-attributes
tags: ['SDK', 'Software Development Kit', 'LdapActionWorkflowActionValueBuildersAttributes', 'NERMLdapActionWorkflowActionValueBuildersAttributes']
---


# LdapActionWorkflowActionValueBuildersAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id. | [optional] 
**WorkflowActionId** | **String** | the id of the workflow action. | [optional] 
**ValueBuilderId** | **String** | the id of the value builder. | [optional] 
**Position** | **Int32** | the position of the value builder attribute. | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapActionWorkflowActionValueBuildersAttributes = Initialize-NERMLdapActionWorkflowActionValueBuildersAttributes  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -WorkflowActionId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -ValueBuilderId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Position 1
```

- Convert the resource to JSON
```powershell
$LdapActionWorkflowActionValueBuildersAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

