# FederationProtocolDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Role** | **String** | Federation protocol role | [optional] 
**EntityId** | **String** | An entity ID is a globally unique name for a SAML entity, either an Identity Provider (IDP) or a Service Provider (SP). | [optional] 

## Examples

- Prepare the resource
```powershell
$FederationProtocolDetails = Initialize-Tm.V3FederationProtocolDetails  -Role SAML_IDP `
 -EntityId http://www.okta.com/exkdaruy8Ln5Ry7C54x6
```

- Convert the resource to JSON
```powershell
$FederationProtocolDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

