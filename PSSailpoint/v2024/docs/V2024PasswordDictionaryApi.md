# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024PasswordDictionaryApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024PasswordDictionary**](V2024PasswordDictionaryApi.md#Get-V2024PasswordDictionary) | **GET** /password-dictionary | Get Password Dictionary
[**Send-V2024PasswordDictionary**](V2024PasswordDictionaryApi.md#Send-V2024PasswordDictionary) | **PUT** /password-dictionary | Update Password Dictionary


<a id="Get-V2024PasswordDictionary"></a>
# **Get-V2024PasswordDictionary**
> String Get-V2024PasswordDictionary<br>

Get Password Dictionary

This gets password dictionary for the organization. A token with ORG_ADMIN authority is required to call this API. The password dictionary file can contain lines that are: 1. comment lines - the first character is '#', can be 128 Unicode codepoints in length, and are ignored during processing 2. empty lines 3. locale line - the first line that starts with ""locale="" is considered to be locale line, the rest are treated as normal content lines 4. line containing the password dictionary word - it must start with non-whitespace character and only non-whitespace characters are allowed;         maximum length of the line is 128 Unicode codepoints   Password dictionary file may not contain more than 2,500 lines (not counting whitespace lines, comment lines and locale line).   Password dict file must contain UTF-8 characters only.  # Sample password text file  ```  # Password dictionary small test file  locale=en_US  # Password dictionary prohibited words  qwerty abcd aaaaa password qazxsws  ```

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get Password Dictionary
try {
    $Result = Get-V2024PasswordDictionary
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PasswordDictionary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024PasswordDictionary"></a>
# **Send-V2024PasswordDictionary**
> void Send-V2024PasswordDictionary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Update Password Dictionary

This updates password dictionary for the organization. A token with ORG_ADMIN authority is required to call this API. The password dictionary file can contain lines that are: 1. comment lines - the first character is '#', can be 128 Unicode codepoints in length, and are ignored during processing 2. empty lines 3. locale line - the first line that starts with ""locale="" is considered to be locale line, the rest are treated as normal content lines 4. line containing the password dictionary word - it must start with non-whitespace character and only non-whitespace characters are allowed;         maximum length of the line is 128 Unicode codepoints   Password dictionary file may not contain more than 2,500 lines (not counting whitespace lines, comment lines and locale line).   Password dict file must contain UTF-8 characters only.  # Sample password text file  ```  # Password dictionary small test file  locale=en_US  # Password dictionary prohibited words  qwerty abcd aaaaa password qazxsws  ```

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$File =  # System.IO.FileInfo |  (optional)

# Update Password Dictionary
try {
    $Result = Send-V2024PasswordDictionary -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-V2024PasswordDictionary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

