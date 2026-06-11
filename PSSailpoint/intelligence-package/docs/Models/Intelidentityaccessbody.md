---
id: intelidentityaccessbody
title: Intelidentityaccessbody
pagination_label: Intelidentityaccessbody
sidebar_label: Intelidentityaccessbody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelidentityaccessbody', 'Intelidentityaccessbody'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelidentityaccessbody
tags: ['SDK', 'Software Development Kit', 'Intelidentityaccessbody', 'Intelidentityaccessbody']
---


# Intelidentityaccessbody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Accounts** | [**[]Intelaccessaccountwire**](intelaccessaccountwire) | Accounts for the identity in camelCase wire format from Shelby List Accounts. | [required]
**PrivilegedAccessItems** | [**[]Intelprivilegedaccessitemwire**](intelprivilegedaccessitemwire) | Privileged access items for the identity returned by SDS Search. | [required]

## Examples

- Prepare the resource
```powershell
$Intelidentityaccessbody = Initialize-Intelidentityaccessbody  -Accounts [{"id":"acc-1","name":"pat.example","source":{"id":"src-1","name":"Active Directory"},"disabled":false,"locked":false,"uncorrelated":false,"authoritative":false,"systemAccount":false,"isMachine":false,"hasEntitlements":true,"manuallyCorrelated":false,"connectionType":"direct","nativeIdentity":"CN=pat,OU=users","created":"2026-01-01T00:00:00Z","modified":"2026-05-01T00:00:00Z"}] `
 -PrivilegedAccessItems [{"privileged":true,"displayName":"Absence_Administrator","name":"Absence_Administrator","standalone":true,"id":"ent-1","source":{"name":"Workday","id":"src-2"},"attribute":"USER_BASED_SECURITY_GROUPS","type":"ENTITLEMENT","value":"Absence_Administrator"}]
```

- Convert the resource to JSON
```powershell
$Intelidentityaccessbody | ConvertTo-JSON
```


[[Back to top]](#) 

