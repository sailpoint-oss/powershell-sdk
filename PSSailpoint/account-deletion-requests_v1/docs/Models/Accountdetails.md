---
id: accountdetails
title: Accountdetails
pagination_label: Accountdetails
sidebar_label: Accountdetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Accountdetails', 'Accountdetails'] 
slug: /tools/sdk/powershell/accountdeletionrequestsv1/models/accountdetails
tags: ['SDK', 'Software Development Kit', 'Accountdetails', 'Accountdetails']
---


# Accountdetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | unique id of this object | [optional] 
**Name** | **String** |  | [optional] 
**AccountId** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**NativeIdentity** | **String** |  | [optional] 
**Uuid** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Disabled** | **Boolean** |  | [optional] 
**Locked** | **Boolean** |  | [optional] 
**Uncorrelated** | **Boolean** |  | [optional] 
**SystemAccount** | **Boolean** |  | [optional] 
**Authoritative** | **Boolean** |  | [optional] 
**SupportsPasswordChange** | **Boolean** |  | [optional] 
**Attributes** | [**SystemCollectionsHashtable**](system-collections-hashtable) |  | [optional] 
**Application** | [**SystemCollectionsHashtable**](system-collections-hashtable) |  | [optional] 
**Identity** | [**SystemCollectionsHashtable**](system-collections-hashtable) |  | [optional] 
**Schema** | [**SystemCollectionsHashtable**](system-collections-hashtable) |  | [optional] 
**PendingAccessRequestIds** | **[]String** |  | [optional] 
**Features** | **[]String** |  | [optional] 
**Meta** | [**SystemCollectionsHashtable**](system-collections-hashtable) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Accountdetails = Initialize-Accountdetails  -Id 2c91808474683da6017468693c260195 `
 -Name null `
 -AccountId 4191808474683da6017468693c260195 `
 -Description null `
 -NativeIdentity null `
 -Uuid null `
 -DisplayName null `
 -Disabled null `
 -Locked null `
 -Uncorrelated null `
 -SystemAccount null `
 -Authoritative null `
 -SupportsPasswordChange null `
 -Attributes null `
 -Application null `
 -Identity null `
 -Schema null `
 -PendingAccessRequestIds null `
 -Features null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$Accountdetails | ConvertTo-JSON
```


[[Back to top]](#) 

