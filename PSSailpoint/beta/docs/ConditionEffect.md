# ConditionEffect
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | Config is a arbitrary map that holds a configuration based on EffectType | [optional] 
**EffectType** | **String** | EffectType is the type of effect to perform when the conditions are evaluated for this logic block HIDE ConditionEffectTypeHide  ConditionEffectTypeHide disables validations SHOW ConditionEffectTypeShow  ConditionEffectTypeShow enables validations DISABLE ConditionEffectTypeDisable  ConditionEffectTypeDisable disables validations ENABLE ConditionEffectTypeEnable  ConditionEffectTypeEnable enables validations REQUIRE ConditionEffectTypeRequire OPTIONAL ConditionEffectTypeOptional SUBMIT_MESSAGE ConditionEffectTypeSubmitMessage SUBMIT_NOTIFICATION ConditionEffectTypeSubmitNotification SET_DEFAULT_VALUE ConditionEffectTypeSetDefaultValue  ConditionEffectTypeSetDefaultValue is ignored on purpose | [optional] 

## Examples

- Prepare the resource
```powershell
$ConditionEffect = Initialize-PSSailpointBetaConditionEffect  -Config {} `
 -EffectType HIDE
```

- Convert the resource to JSON
```powershell
$ConditionEffect | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

