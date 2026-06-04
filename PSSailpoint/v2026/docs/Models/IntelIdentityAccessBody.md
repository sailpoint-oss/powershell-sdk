---
id: v2026-intel-identity-access-body
title: IntelIdentityAccessBody
pagination_label: IntelIdentityAccessBody
sidebar_label: IntelIdentityAccessBody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelIdentityAccessBody', 'V2026IntelIdentityAccessBody'] 
slug: /tools/sdk/powershell/v2026/models/intel-identity-access-body
tags: ['SDK', 'Software Development Kit', 'IntelIdentityAccessBody', 'V2026IntelIdentityAccessBody']
---


# IntelIdentityAccessBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Accounts** | [**[]IntelAccessAccountWire**](intel-access-account-wire) | Accounts for the identity in camelCase wire format from Shelby List Accounts. | [required]
**PrivilegedAccessItems** | [**[]IntelPrivilegedAccessItemWire**](intel-privileged-access-item-wire) | Privileged access items for the identity returned by SDS Search. | [required]

## Examples

- Prepare the resource
```powershell
$IntelIdentityAccessBody = Initialize-V2026IntelIdentityAccessBody  -Accounts [{id=acc-1, name=example.user, source={id=src-1, name=Example Directory}, disabled=false, locked=false, uncorrelated=false, authoritative=false, systemAccount=false, isMachine=false, hasEntitlements=true, manuallyCorrelated=false, connectionType=direct, nativeIdentity=CN=example.user,OU=users, created=2026-01-01T00:00:00Z, modified=2026-05-01T00:00:00Z}] `
 -PrivilegedAccessItems [{privileged=true, displayName=Example_Admin_Access, name=Example_Admin_Access, standalone=true, id=ent-1, source={name=Example HR Source, id=src-2}, attribute=EXAMPLE_PERMISSION_GROUPS, type=ENTITLEMENT, value=Example_Admin_Access}]
```

- Convert the resource to JSON
```powershell
$IntelIdentityAccessBody | ConvertTo-JSON
```


[[Back to top]](#) 

