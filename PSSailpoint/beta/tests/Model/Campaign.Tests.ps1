#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSSailpoint.Beta' -name 'BetaCampaign' {
    Context 'BetaCampaign' {
        It 'Initialize-BetaCampaign' {
            # a simple test to create an object
            #$NewObject = Initialize-BetaCampaign -Id "TEST_VALUE" -Name "TEST_VALUE" -Description "TEST_VALUE" -Deadline "TEST_VALUE" -Type "TEST_VALUE" -EmailNotificationEnabled "TEST_VALUE" -AutoRevokeAllowed "TEST_VALUE" -RecommendationsEnabled "TEST_VALUE" -Status "TEST_VALUE" -CorrelatedStatus "TEST_VALUE" -Created "TEST_VALUE" -TotalCertifications "TEST_VALUE" -CompletedCertifications "TEST_VALUE" -Alerts "TEST_VALUE" -Modified "TEST_VALUE" -VarFilter "TEST_VALUE" -SunsetCommentsRequired "TEST_VALUE" -SourceOwnerCampaignInfo "TEST_VALUE" -SearchCampaignInfo "TEST_VALUE" -RoleCompositionCampaignInfo "TEST_VALUE" -MachineAccountCampaignInfo "TEST_VALUE" -SourcesWithOrphanEntitlements "TEST_VALUE" -MandatoryCommentRequirement "TEST_VALUE"
            #$NewObject | Should -BeOfType Campaign
            #$NewObject.property | Should -Be 0
        }
    }
}
