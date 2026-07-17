---
id: account-updated-multi-value-attribute-changes-inner
title: AccountUpdatedMultiValueAttributeChangesInner
pagination_label: AccountUpdatedMultiValueAttributeChangesInner
sidebar_label: AccountUpdatedMultiValueAttributeChangesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountUpdatedMultiValueAttributeChangesInner', 'AccountUpdatedMultiValueAttributeChangesInner'] 
slug: /tools/sdk/powershell/triggers/models/account-updated-multi-value-attribute-changes-inner
tags: ['SDK', 'Software Development Kit', 'AccountUpdatedMultiValueAttributeChangesInner', 'AccountUpdatedMultiValueAttributeChangesInner']
---


# AccountUpdatedMultiValueAttributeChangesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the attribute that was changed. | [required]
**AddedValues** | [**[]AccountUpdatedMultiValueAttributeChangesInnerAddedValuesInner**](account-updated-multi-value-attribute-changes-inner-added-values-inner) | The values that were added to the attribute. | [required]
**RemovedValues** | [**[]AccountUpdatedMultiValueAttributeChangesInnerAddedValuesInner**](account-updated-multi-value-attribute-changes-inner-added-values-inner) | The values that were removed from the attribute. | [required]

## Examples

- Prepare the resource
```powershell
$AccountUpdatedMultiValueAttributeChangesInner = Initialize-AccountUpdatedMultiValueAttributeChangesInner  -Name memberOf `
 -AddedValues ["CN=Sales,OU=Groups,DC=acme,DC=com","CN=AllEmployees,OU=Groups,DC=acme,DC=com"] `
 -RemovedValues ["CN=AllEmployees,OU=Groups,DC=acme,DC=com","CN=Contractors,OU=Groups,DC=acme,DC=com"]
```

- Convert the resource to JSON
```powershell
$AccountUpdatedMultiValueAttributeChangesInner | ConvertTo-JSON
```


[[Back to top]](#) 

