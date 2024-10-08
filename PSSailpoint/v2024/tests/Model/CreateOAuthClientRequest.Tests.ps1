#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSSailpoint.V2024' -name 'V2024CreateOAuthClientRequest' {
    Context 'V2024CreateOAuthClientRequest' {
        It 'Initialize-V2024CreateOAuthClientRequest' {
            # a simple test to create an object
            #$NewObject = Initialize-V2024CreateOAuthClientRequest -BusinessName "TEST_VALUE" -HomepageUrl "TEST_VALUE" -Name "TEST_VALUE" -Description "TEST_VALUE" -AccessTokenValiditySeconds "TEST_VALUE" -RefreshTokenValiditySeconds "TEST_VALUE" -RedirectUris "TEST_VALUE" -GrantTypes "TEST_VALUE" -AccessType "TEST_VALUE" -Type "TEST_VALUE" -Internal "TEST_VALUE" -Enabled "TEST_VALUE" -StrongAuthSupported "TEST_VALUE" -ClaimsSupported "TEST_VALUE" -Scope "TEST_VALUE"
            #$NewObject | Should -BeOfType CreateOAuthClientRequest
            #$NewObject.property | Should -Be 0
        }
    }
}
