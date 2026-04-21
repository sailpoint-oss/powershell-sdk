---
id: nerm-create-ldap-action-request
title: CreateLdapActionRequest
pagination_label: CreateLdapActionRequest
sidebar_label: CreateLdapActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateLdapActionRequest', 'NERMCreateLdapActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-ldap-action-request
tags: ['SDK', 'Software Development Kit', 'CreateLdapActionRequest', 'NERMCreateLdapActionRequest']
---


# CreateLdapActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**LdapAction**](ldap-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateLdapActionRequest = Initialize-NERMCreateLdapActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateLdapActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

