# RoleMiningSessionScope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityIds** | **String[]** | The list of identities for this role mining session. | [optional] 
**Criteria** | **String** | The &quot;&quot;search&quot;&quot; criteria that produces the list of identities for this role mining session. | [optional] 
**AttributeFilterCriteria** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | The filter criteria for this role mining session. | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningSessionScope = Initialize-BetaRoleMiningSessionScope  -IdentityIds [2c918090761a5aac0176215c46a62d58, 2c918090761a5aac01722015c46a62d42] `
 -Criteria source.name:DataScienceDataset `
 -AttributeFilterCriteria {displayName&#x3D;{untranslated&#x3D;Location: Miami}, ariaLabel&#x3D;{untranslated&#x3D;Location: Miami}, data&#x3D;{displayName&#x3D;{translateKey&#x3D;IDN.IDENTITY_ATTRIBUTES.LOCATION}, name&#x3D;location, operator&#x3D;EQUALS, values&#x3D;[Miami]}}
```

- Convert the resource to JSON
```powershell
$RoleMiningSessionScope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

