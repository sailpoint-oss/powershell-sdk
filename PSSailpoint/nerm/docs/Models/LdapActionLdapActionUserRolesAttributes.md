---
id: nerm-ldap-action-ldap-action-user-roles-attributes
title: LdapActionLdapActionUserRolesAttributes
pagination_label: LdapActionLdapActionUserRolesAttributes
sidebar_label: LdapActionLdapActionUserRolesAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LdapActionLdapActionUserRolesAttributes', 'NERMLdapActionLdapActionUserRolesAttributes'] 
slug: /tools/sdk/powershell/nerm/models/ldap-action-ldap-action-user-roles-attributes
tags: ['SDK', 'Software Development Kit', 'LdapActionLdapActionUserRolesAttributes', 'NERMLdapActionLdapActionUserRolesAttributes']
---


# LdapActionLdapActionUserRolesAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id. | [optional] 
**RoleId** | **String** | the id of the role. | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapActionLdapActionUserRolesAttributes = Initialize-NERMLdapActionLdapActionUserRolesAttributes  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -RoleId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8
```

- Convert the resource to JSON
```powershell
$LdapActionLdapActionUserRolesAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

