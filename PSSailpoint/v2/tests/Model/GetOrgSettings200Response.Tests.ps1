#
# SailPoint SaaS API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 2.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSSailpointV2' -name 'V2GetOrgSettings200Response' {
    Context 'V2GetOrgSettings200Response' {
        It 'Initialize-V2GetOrgSettings200Response' {
            # a simple test to create an object
            #$NewObject = Initialize-V2GetOrgSettings200Response -Id "TEST_VALUE" -Name "TEST_VALUE" -Description "TEST_VALUE" -DateCreated "TEST_VALUE" -LastUpdated "TEST_VALUE" -ScriptName "TEST_VALUE" -SsoDomain "TEST_VALUE" -Status "TEST_VALUE" -MaxRegisteredIdentities "TEST_VALUE" -IdentityCount "TEST_VALUE" -KbaReqForAuthn "TEST_VALUE" -KbaReqAnswers "TEST_VALUE" -LockoutAttemptThreshold "TEST_VALUE" -LockoutTimeMinutes "TEST_VALUE" -UsageCertRequired "TEST_VALUE" -AdminStrongAuthRequired "TEST_VALUE" -EnableExternalPasswordChange "TEST_VALUE" -EnablePasswordReplay "TEST_VALUE" -EnableAutomaticPasswordReplay "TEST_VALUE" -Netmasks "TEST_VALUE" -CountryCodes "TEST_VALUE" -WhiteList "TEST_VALUE" -EmailTestMode "TEST_VALUE" -EmailTestAddress "TEST_VALUE" -UsernameEmptyText "TEST_VALUE" -UsernameLabel "TEST_VALUE" -EnableAutomationGeneration "TEST_VALUE" -PasswordReplayState "TEST_VALUE" -SystemNotificationConfig "TEST_VALUE" -SystemNotificationEmails "TEST_VALUE" -LoginUrl "TEST_VALUE" -RedirectPatterns "TEST_VALUE" -StyleHash "TEST_VALUE" -ApprovalConfig "TEST_VALUE" -SsoPartnerSource "TEST_VALUE"
            #$NewObject | Should -BeOfType GetOrgSettings200Response
            #$NewObject.property | Should -Be 0
        }
    }
}
