---
id: nerm-attribute-properties
title: AttributeProperties
pagination_label: AttributeProperties
sidebar_label: AttributeProperties
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AttributeProperties', 'NERMAttributeProperties'] 
slug: /tools/sdk/powershell/nerm/models/attribute-properties
tags: ['SDK', 'Software Development Kit', 'AttributeProperties', 'NERMAttributeProperties']
---


# AttributeProperties

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the attribute | [optional] [readonly] 
**Uid** | **String** | The user-specified identifier of the attribute | [optional] [readonly] 
**Label** | **String** | The label for the attribute | [optional] 
**Description** | **String** | A description of the attribute | [optional] 
**ToolTip** | **String** | The helper text that accompanies the attribute | [optional] 
**Crypt** | **Boolean** | Whether or not the attribute is encrypted | [optional] 
**Archived** | **Boolean** | Whether the attribute is archived | [optional] 
**ArchivedOn** | **System.DateTime** | When the attribute was archived | [optional] [readonly] 
**CreatedAt** | **System.DateTime** | When the attribute was created | [optional] [readonly] 
**UpdatedAt** | **System.DateTime** | When the attribute was last updated | [optional] [readonly] 
**DateFormat** |  **Enum** [  "mm/dd/yyyy",    "mm-dd-yyyy",    "dd/mm/yyyy",    "dd-mm-yyyy",    "yyyy/mm/dd",    "yyyy-mm-dd" ] | The format of the date input if it is a date input | [optional] 
**SelectableStatus** | **String** | The status of the profiles that can be selected | [optional] 
**RiskScoreSetting** | **String** | What setting is used for the risk score | [optional] 
**RiskType** | **String** | Type of risk that applies to the attribute | [optional] 
**OwnershipDriven** | **Boolean** | Only shows profiles that the user currently has access to, to be selected | [optional] 
**AllowMultipleSelections** | **Boolean** | Whether or not multiple selections can be made on something like a contributor search. | [optional] 
**FilteredByNeAttribute** | **Boolean** | Whether or not the attribute is filtered by another attribute | [optional] 
**FilteringNeAttributeId** | **String** | The ID of the filtering attribute | [optional] 
**NeAttributeFilterId** | **String** | The ID of the attribute filter | [optional] 
**ReverseAssociationAttributeId** | **String** | The ID of the attribute used with reverse association | [optional] 
**ProfileTypeId** | **String** | The ID of the profile type the attribute applies to | [optional] 
**LegacyId** | **String** | The legacy ID | [optional] 
**TmpCreatedAt** | **System.DateTime** | the temp of when attribute was created | [optional] [readonly] 
**TmpUpdatedAt** | **System.DateTime** | the temp of when attribute was last updated | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AttributeProperties = Initialize-NERMAttributeProperties  -Id ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -Uid myattribute `
 -Label birthday `
 -Description Your birthday `
 -ToolTip Put your birthday here mm-dd-yyyy `
 -Crypt false `
 -Archived false `
 -ArchivedOn null `
 -CreatedAt null `
 -UpdatedAt null `
 -DateFormat mm/dd/yyyy `
 -SelectableStatus Active `
 -RiskScoreSetting standard `
 -RiskType OverallRisk `
 -OwnershipDriven true `
 -AllowMultipleSelections true `
 -FilteredByNeAttribute true `
 -FilteringNeAttributeId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -NeAttributeFilterId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -ReverseAssociationAttributeId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -ProfileTypeId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -LegacyId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -TmpCreatedAt null `
 -TmpUpdatedAt null
```

- Convert the resource to JSON
```powershell
$AttributeProperties | ConvertTo-JSON
```


[[Back to top]](#) 

