#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSSailpoint.V2024' -name 'V2024AccessRequestAdminItemStatus' {
    Context 'V2024AccessRequestAdminItemStatus' {
        It 'Initialize-V2024AccessRequestAdminItemStatus' {
            # a simple test to create an object
            #$NewObject = Initialize-V2024AccessRequestAdminItemStatus -Id "TEST_VALUE" -Name "TEST_VALUE" -Type "TEST_VALUE" -CancelledRequestDetails "TEST_VALUE" -ErrorMessages "TEST_VALUE" -State "TEST_VALUE" -ApprovalDetails "TEST_VALUE" -ManualWorkItemDetails "TEST_VALUE" -AccountActivityItemId "TEST_VALUE" -RequestType "TEST_VALUE" -Modified "TEST_VALUE" -Created "TEST_VALUE" -Requester "TEST_VALUE" -RequestedFor "TEST_VALUE" -RequesterComment "TEST_VALUE" -SodViolationContext "TEST_VALUE" -ProvisioningDetails "TEST_VALUE" -PreApprovalTriggerDetails "TEST_VALUE" -AccessRequestPhases "TEST_VALUE" -Description "TEST_VALUE" -RemoveDate "TEST_VALUE" -Cancelable "TEST_VALUE" -ReauthorizationRequired "TEST_VALUE" -AccessRequestId "TEST_VALUE" -ClientMetadata "TEST_VALUE"
            #$NewObject | Should -BeOfType AccessRequestAdminItemStatus
            #$NewObject.property | Should -Be 0
        }
    }
}
