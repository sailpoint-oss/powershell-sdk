# PSSailpoint.V3.PSSailpoint.V3\Api.PasswordDictionaryApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-PasswordDictionary**](PasswordDictionaryApi.md#Get-PasswordDictionary) | **GET** /password-dictionary | Get Password Dictionary
[**Send-PasswordDictionary**](PasswordDictionaryApi.md#Send-PasswordDictionary) | **PUT** /password-dictionary | Update Password Dictionary


<a id="Get-PasswordDictionary"></a>
# **Get-PasswordDictionary**
> String Get-PasswordDictionary<br>

Get Password Dictionary

This gets password dictionary for the organization. A token with ORG_ADMIN authority is required to call this API. The password dictionary file can contain lines that are: 1. comment lines - the first character is '#', can be 128 Unicode codepoints in length, and are ignored during processing 2. empty lines 3. locale line - the first line that starts with ""locale="" is considered to be locale line, the rest are treated as normal content lines 4. line containing the password dictionary word - it must start with non-whitespace character and only non-whitespace characters are allowed;         maximum length of the line is 128 Unicode codepoints   Password dictionary file may not contain more than 2,500 lines (not counting whitespace lines, comment lines and locale line).   Password dict file must contain UTF-8 characters only.  # Sample password text file  ```  # Password dictionary small test file  locale=en_US  # Password dictionary prohibited words  qwerty abcd aaaaa password qazxsws  ```

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get Password Dictionary
try {
    $Result = Get-PasswordDictionary
} catch {
    Write-Host ("Exception occurred when calling Get-PasswordDictionary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-PasswordDictionary"></a>
# **Send-PasswordDictionary**
> void Send-PasswordDictionary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Update Password Dictionary

This updates password dictionary for the organization. A token with ORG_ADMIN authority is required to call this API. The password dictionary file can contain lines that are: 1. comment lines - the first character is '#', can be 128 Unicode codepoints in length, and are ignored during processing 2. empty lines 3. locale line - the first line that starts with ""locale="" is considered to be locale line, the rest are treated as normal content lines 4. line containing the password dictionary word - it must start with non-whitespace character and only non-whitespace characters are allowed;         maximum length of the line is 128 Unicode codepoints   Password dictionary file may not contain more than 2,500 lines (not counting whitespace lines, comment lines and locale line).   Password dict file must contain UTF-8 characters only.  # Sample password text file  ```  # Password dictionary small test file  locale=en_US  # Password dictionary prohibited words  qwerty abcd aaaaa password qazxsws  ```

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$File =  # System.IO.FileInfo |  (optional)

# Update Password Dictionary
try {
    $Result = Send-PasswordDictionary -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-PasswordDictionary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

