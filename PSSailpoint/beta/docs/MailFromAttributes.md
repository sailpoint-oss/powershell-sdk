# MailFromAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | **String** | The email identity | [optional] 
**MailFromDomain** | **String** | The name of a domain that an email identity uses as a custom MAIL FROM domain | [optional] 
**MxRecord** | **String** | MX record that is required in customer&#39;s DNS to allow the domain to receive bounce and complaint notifications that email providers send you | [optional] 
**TxtRecord** | **String** | TXT record that is required in customer&#39;s DNS in order to prove that Amazon SES is authorized to send email from your domain | [optional] 
**MailFromDomainStatus** | **String** | The current status of the MAIL FROM verification | [optional] 

## Examples

- Prepare the resource
```powershell
$MailFromAttributes = Initialize-BetaMailFromAttributes  -Identity bob.smith@sailpoint.com `
 -MailFromDomain foo.sailpoint.com `
 -MxRecord 10 feedback-smtp.us-east-1.amazonses.com `
 -TxtRecord v&#x3D;spf1 include:amazonses.com ~all `
 -MailFromDomainStatus PENDING
```

- Convert the resource to JSON
```powershell
$MailFromAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

