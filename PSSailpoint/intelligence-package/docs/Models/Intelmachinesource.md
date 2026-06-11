---
id: intelmachinesource
title: Intelmachinesource
pagination_label: Intelmachinesource
sidebar_label: Intelmachinesource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelmachinesource', 'Intelmachinesource'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelmachinesource
tags: ['SDK', 'Software Development Kit', 'Intelmachinesource', 'Intelmachinesource']
---


# Intelmachinesource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique identifier of the correlated source in Identity Security Cloud. | [optional] 
**Name** | **String** | Display name of the source as configured in Identity Security Cloud. | [optional] 
**Type** | **String** | Connector or source type classification for the backing system. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelmachinesource = Initialize-Intelmachinesource  -Id 2c9180835d2e5168015d32f890301e89 `
 -Name Active Directory `
 -Type LDAP
```

- Convert the resource to JSON
```powershell
$Intelmachinesource | ConvertTo-JSON
```


[[Back to top]](#) 

