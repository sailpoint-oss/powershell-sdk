#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum InvocationStatusType.

.DESCRIPTION

Defines the Invocation type.  **TEST** The trigger was invocated as a test, either via the test subscription button in the UI or via the start test invocation API.  **REAL_TIME** The trigger subscription is live and was invocated by a real event in IdentityNow.
#>

enum InvocationStatusType {
    # enum value: "TEST"
    TEST
    # enum value: "REAL_TIME"
    REAL_TIME
}

