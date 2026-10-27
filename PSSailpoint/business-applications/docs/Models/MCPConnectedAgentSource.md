---
id: mcp-connected-agent-source
title: MCPConnectedAgentSource
pagination_label: MCPConnectedAgentSource
sidebar_label: MCPConnectedAgentSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MCPConnectedAgentSource', 'MCPConnectedAgentSource'] 
slug: /tools/sdk/powershell/businessapplications/models/mcp-connected-agent-source
tags: ['SDK', 'Software Development Kit', 'MCPConnectedAgentSource', 'MCPConnectedAgentSource']
---


# MCPConnectedAgentSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$MCPConnectedAgentSource = Initialize-MCPConnectedAgentSource  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$MCPConnectedAgentSource | ConvertTo-JSON
```


[[Back to top]](#) 

