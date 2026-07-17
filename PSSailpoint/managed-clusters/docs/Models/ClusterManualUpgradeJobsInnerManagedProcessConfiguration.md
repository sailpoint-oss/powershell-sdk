---
id: cluster-manual-upgrade-jobs-inner-managed-process-configuration
title: ClusterManualUpgradeJobsInnerManagedProcessConfiguration
pagination_label: ClusterManualUpgradeJobsInnerManagedProcessConfiguration
sidebar_label: ClusterManualUpgradeJobsInnerManagedProcessConfiguration
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ClusterManualUpgradeJobsInnerManagedProcessConfiguration', 'ClusterManualUpgradeJobsInnerManagedProcessConfiguration'] 
slug: /tools/sdk/powershell/managedclusters/models/cluster-manual-upgrade-jobs-inner-managed-process-configuration
tags: ['SDK', 'Software Development Kit', 'ClusterManualUpgradeJobsInnerManagedProcessConfiguration', 'ClusterManualUpgradeJobsInnerManagedProcessConfiguration']
---


# ClusterManualUpgradeJobsInnerManagedProcessConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Charon** | [**ClusterManualUpgradeJobsInnerManagedProcessConfigurationCharon**](cluster-manual-upgrade-jobs-inner-managed-process-configuration-charon) |  | [optional] 
**Ccg** | [**ClusterManualUpgradeJobsInnerManagedProcessConfigurationCcg**](cluster-manual-upgrade-jobs-inner-managed-process-configuration-ccg) |  | [optional] 
**OtelAgent** | [**ClusterManualUpgradeJobsInnerManagedProcessConfigurationOtelAgent**](cluster-manual-upgrade-jobs-inner-managed-process-configuration-otel-agent) |  | [optional] 
**Relay** | [**ClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay**](cluster-manual-upgrade-jobs-inner-managed-process-configuration-relay) |  | [optional] 
**Toolbox** | [**ClusterManualUpgradeJobsInnerManagedProcessConfigurationToolbox**](cluster-manual-upgrade-jobs-inner-managed-process-configuration-toolbox) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ClusterManualUpgradeJobsInnerManagedProcessConfiguration = Initialize-ClusterManualUpgradeJobsInnerManagedProcessConfiguration  -Charon null `
 -Ccg null `
 -OtelAgent null `
 -Relay null `
 -Toolbox null
```

- Convert the resource to JSON
```powershell
$ClusterManualUpgradeJobsInnerManagedProcessConfiguration | ConvertTo-JSON
```


[[Back to top]](#) 

