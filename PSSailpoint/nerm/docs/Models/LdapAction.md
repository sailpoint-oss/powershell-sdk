---
id: nerm-ldap-action
title: LdapAction
pagination_label: LdapAction
sidebar_label: LdapAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LdapAction', 'NERMLdapAction'] 
slug: /tools/sdk/powershell/nerm/models/ldap-action
tags: ['SDK', 'Software Development Kit', 'LdapAction', 'NERMLdapAction']
---


# LdapAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow the workflow action belongs to. | [required]
**Description** | **String** | The description of the workflow action. | [required]
**Archived** | **Boolean** | If the workflow action is archived or not. | [optional] [default to $false]
**StoreType** |  **Enum** [  "Local",    "Directory" ] | the type of store. | [required]
**LdapActionUserRolesAttributes** | [**LdapActionLdapActionUserRolesAttributes**](ldap-action-ldap-action-user-roles-attributes) |  | [optional] 
**WorkflowActionValueBuildersAttributes** | [**LdapActionWorkflowActionValueBuildersAttributes**](ldap-action-workflow-action-value-builders-attributes) |  | [optional] 
**WorkflowActionDirectoryGroupsAttributes** | [**LdapActionWorkflowActionDirectoryGroupsAttributes**](ldap-action-workflow-action-directory-groups-attributes) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapAction = Initialize-NERMLdapAction  -WorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Description Create a Collaboration user account for this profile. `
 -Archived false `
 -StoreType Local `
 -LdapActionUserRolesAttributes null `
 -WorkflowActionValueBuildersAttributes null `
 -WorkflowActionDirectoryGroupsAttributes null
```

- Convert the resource to JSON
```powershell
$LdapAction | ConvertTo-JSON
```


[[Back to top]](#) 

