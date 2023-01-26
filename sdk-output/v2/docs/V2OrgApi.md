# PSSailpointV2.PSSailpointV2/Api.V2OrgApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2OrgSettings**](V2OrgApi.md#Get-V2OrgSettings) | **GET** /org | Retrieves your org settings.
[**Update-V2OrgSettings**](V2OrgApi.md#Update-V2OrgSettings) | **PATCH** /org | Updates one or more org attributes.


<a name="Get-V2OrgSettings"></a>
# **Get-V2OrgSettings**
> GetOrgSettings200Response Get-V2OrgSettings<br>

Retrieves your org settings.

Retrieves information and operational settings for your org (as determined by the URL domain).

### Example
```powershell

# Retrieves your org settings.
try {
    $Result = Get-V2OrgSettings
} catch {
    Write-Host ("Exception occurred when calling Get-V2OrgSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetOrgSettings200Response**](GetOrgSettings200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-V2OrgSettings"></a>
# **Update-V2OrgSettings**
> GetOrgSettings200Response Update-V2OrgSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateOrgSettingsRequest] <PSCustomObject><br>

Updates one or more org attributes.

Updates one or more attributes for your org.

### Example
```powershell
$GetOrgSettings200ResponseApprovalConfig = Initialize-GetOrgSettings200ResponseApprovalConfig -DaysTillEscalation 0 -DaysBetweenReminders 0 -MaxReminders 0 -FallbackApprover "MyFallbackApprover"
$UpdateOrgSettingsRequest = Initialize-UpdateOrgSettingsRequest -CountryCodes "MyCountryCodes" -EnableExternalPasswordChange $false -EnableAutomaticPasswordReplay $false -EnableAutomationGeneration $false -KbaReqAnswers 0 -KbaReqForAuthn 0 -LockoutAttemptThreshold 0 -LockoutTimeMinutes 0 -LoginUrl "MyLoginUrl" -Netmasks "MyNetmasks" -NotifyAuthenticationSettingChange $false -PasswordReplayState "enabled" -PreferredIdentityInviteTemplate "MyPreferredIdentityInviteTemplate" -RedirectPatterns "MyRedirectPatterns" -SsoPartnerSource "MySsoPartnerSource" -SystemNotificationEmails "MySystemNotificationEmails" -TrackAnalytics $false -UsageCertRequired $false -UsageCertText "MyUsageCertText" -UsernameEmptyText "MyUsernameEmptyText" -UsernameLabel "MyUsernameLabel" -WhiteList $false -ApprovalConfig $GetOrgSettings200ResponseApprovalConfig # UpdateOrgSettingsRequest | Org settings to update.

# Updates one or more org attributes.
try {
    $Result = Update-V2OrgSettings -UpdateOrgSettingsRequest $UpdateOrgSettingsRequest
} catch {
    Write-Host ("Exception occurred when calling Update-V2OrgSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateOrgSettingsRequest** | [**UpdateOrgSettingsRequest**](UpdateOrgSettingsRequest.md)| Org settings to update. | 

### Return type

[**GetOrgSettings200Response**](GetOrgSettings200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

