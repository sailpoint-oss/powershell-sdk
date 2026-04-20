---
id: nerm-ldap-action-workflow-action-directory-groups-attributes
title: LdapActionWorkflowActionDirectoryGroupsAttributes
pagination_label: LdapActionWorkflowActionDirectoryGroupsAttributes
sidebar_label: LdapActionWorkflowActionDirectoryGroupsAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LdapActionWorkflowActionDirectoryGroupsAttributes', 'NERMLdapActionWorkflowActionDirectoryGroupsAttributes'] 
slug: /tools/sdk/powershell/nerm/models/ldap-action-workflow-action-directory-groups-attributes
tags: ['SDK', 'Software Development Kit', 'LdapActionWorkflowActionDirectoryGroupsAttributes', 'NERMLdapActionWorkflowActionDirectoryGroupsAttributes']
---


# LdapActionWorkflowActionDirectoryGroupsAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id. | [optional] 
**DirectoryId** | **String** | the id of the directory. | [optional] 
**GroupLabel** | **String** | the group label. | [optional] 
**GroupDn** | **String** | the group dn. | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapActionWorkflowActionDirectoryGroupsAttributes = Initialize-NERMLdapActionWorkflowActionDirectoryGroupsAttributes  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -DirectoryId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -GroupLabel Admin `
 -GroupDn group
```

- Convert the resource to JSON
```powershell
$LdapActionWorkflowActionDirectoryGroupsAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

