# ResourceObjectsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the source | [optional] [readonly] 
**Name** | **String** | Name of the source | [optional] [readonly] 
**ObjectCount** | **Int32** | The number of objects that were fetched by the connector. | [optional] [readonly] 
**ElapsedMillis** | **Int32** | The number of milliseconds spent on the entire request. | [optional] [readonly] 
**ResourceObjects** | [**ResourceObject[]**](ResourceObject.md) | Fetched objects from the source connector. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ResourceObjectsResponse = Initialize-BetaResourceObjectsResponse  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name ODS-AD-Test [source-999999] `
 -ObjectCount 25 `
 -ElapsedMillis 1055 `
 -ResourceObjects null
```

- Convert the resource to JSON
```powershell
$ResourceObjectsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

