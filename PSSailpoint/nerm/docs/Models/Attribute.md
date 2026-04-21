---
id: nerm-attribute
title: Attribute
pagination_label: Attribute
sidebar_label: Attribute
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Attribute', 'NERMAttribute'] 
slug: /tools/sdk/powershell/nerm/models/attribute
tags: ['SDK', 'Software Development Kit', 'Attribute', 'NERMAttribute']
---


# Attribute

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the attribute | [optional] [readonly] 
**Uid** | **String** | The user-specified identifier of the attribute | [optional] [readonly] 
**Label** | **String** | The label for the attribute | [optional] 
**Description** | **String** | A description of the attribute | [optional] 
**ToolTip** | **String** | The helper text that accompanies the attribute | [optional] 
**Crypt** | **Boolean** | Whether the attribute is encrypted | [optional] 
**Archived** | **Boolean** | Whether the attribute is archived | [optional] 
**ArchivedOn** | **System.DateTime** | When the attribute was archived | [optional] 
**CreatedAt** | **System.DateTime** | When the attribute was created | [optional] 
**UpdatedAt** | **System.DateTime** | When the attribute was updated | [optional] 
**DateFormat** |  **Enum** [  "mm/dd/yyyy",    "mm-dd-yyyy",    "dd/mm/yyyy",    "dd-mm-yyyy",    "yyyy/mm/dd",    "yyyy-mm-dd" ] | The format of the date input if it is a date input | [optional] 
**SelectableStatus** | **String** | The status of the profiles that can be selected | [optional] 
**RiskType** | **String** | Type of risk that applies to the attribute | [optional] 
**OwnershipDriven** | **Boolean** | Only shows profiles that the user currently has access to, to be selected | [optional] 
**AllowMultipleSelections** | **Boolean** | Whether or not multiple selections can be made on something like a contributor search. | [optional] 
**FilteredByNeAttribute** | **Boolean** | Whether or not the attribute is filtered by another attribute | [optional] 
**FilteringNeAttributeId** | **String** | The ID of the filtering attribute | [optional] 
**NeAttributeFilterId** | **String** | The ID of the attribute filter | [optional] 
**ReverseAssociationAttribute** | [**AttributeProperties**](attribute-properties) |  | [optional] 
**ProfileTypeId** | **String** | The ID of the profile type the attribute applies to | [optional] 
**DataType** |  **Enum** [  "text field",    "text area",    "drop-down",    "radio buttons",    "check boxes",    "date",    "tags",    "attachment",    "profile select",    "profile search",    "owner select",    "owner search",    "contributor select",    "contributor search" ] | The type of data that applies to the attribute | [optional] 
**Type** |  **Enum** [  "AttachmentAttribute",    "CheckBoxesAttribute",    "ContributorSearchAttribute",    "ContributorSelectAttribute",    "DateAttribute",    "DropDownAttribute",    "OwnerSearchAttribute",    "OwnerSelectAttribute",    "ProfileSearchAttribute",    "ProfileSelectAttribute",    "RadioButtonsAttribute",    "TagsAttribute",    "TextAreaAttribute",    "TextFieldAttribute" ] | The attribute's type | [optional] 

## Examples

- Prepare the resource
```powershell
$Attribute = Initialize-NERMAttribute  -Id ac4aae0b-4140-49a4-a84c-126762fd0c8f `
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
 -RiskType OverallRisk `
 -OwnershipDriven true `
 -AllowMultipleSelections true `
 -FilteredByNeAttribute true `
 -FilteringNeAttributeId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -NeAttributeFilterId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -ReverseAssociationAttribute null `
 -ProfileTypeId ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -DataType text field `
 -Type AttachmentAttribute
```

- Convert the resource to JSON
```powershell
$Attribute | ConvertTo-JSON
```


[[Back to top]](#) 

