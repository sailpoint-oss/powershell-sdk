---
id: access-request-recommendation-item
title: AccessRequestRecommendationItem
pagination_label: AccessRequestRecommendationItem
sidebar_label: AccessRequestRecommendationItem
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequestRecommendationItem', 'AccessRequestRecommendationItem'] 
slug: /tools/sdk/powershell/iaiaccessrequestrecommendations/models/access-request-recommendation-item
tags: ['SDK', 'Software Development Kit', 'AccessRequestRecommendationItem', 'AccessRequestRecommendationItem']
---


# AccessRequestRecommendationItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of access item being recommended. | [optional] 
**Type** | **AccessRequestRecommendationItemType** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestRecommendationItem = Initialize-AccessRequestRecommendationItem  -Id 2c9180835d2e5168015d32f890ca1581 `
 -Type null
```

- Convert the resource to JSON
```powershell
$AccessRequestRecommendationItem | ConvertTo-JSON
```


[[Back to top]](#) 

