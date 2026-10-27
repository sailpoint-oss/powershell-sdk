---
id: mcp-connected-agent-owners
title: MCPConnectedAgentOwners
pagination_label: MCPConnectedAgentOwners
sidebar_label: MCPConnectedAgentOwners
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MCPConnectedAgentOwners', 'MCPConnectedAgentOwners'] 
slug: /tools/sdk/powershell/businessapplications/models/mcp-connected-agent-owners
tags: ['SDK', 'Software Development Kit', 'MCPConnectedAgentOwners', 'MCPConnectedAgentOwners']
---


# MCPConnectedAgentOwners

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PrimaryIdentity** | [**BaseReferenceDto**](base-reference-dto) | Primary owner. | [optional] 
**SecondaryIdentities** | [**[]BaseReferenceDto**](base-reference-dto) | Secondary owners. | [optional] 

## Examples

- Prepare the resource
```powershell
$MCPConnectedAgentOwners = Initialize-MCPConnectedAgentOwners  -PrimaryIdentity null `
 -SecondaryIdentities null
```

- Convert the resource to JSON
```powershell
$MCPConnectedAgentOwners | ConvertTo-JSON
```


[[Back to top]](#) 

