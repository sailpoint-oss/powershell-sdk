#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum RequestedItemStatusRequestState.

.DESCRIPTION

Indicates the state of an access request: * EXECUTING: The request is executing, which indicates the system is doing some processing. * REQUEST_COMPLETED: Indicates the request  has been completed. * CANCELLED: The request was cancelled with no user input. * TERMINATED: The request has been terminated before it was able to complete. * PROVISIONING_VERIFICATION_PENDING: The request has finished any approval steps and provisioning is waiting to be verified. * REJECTED: The request was rejected. * PROVISIONING_FAILED: The request has failed to complete. * NOT_ALL_ITEMS_PROVISIONED: One or more of the requested items failed to complete, but there were one or more  successes. * ERROR: An error occurred during request processing.
#>

enum RequestedItemStatusRequestState {
    # enum value: "EXECUTING"
    EXECUTING
    # enum value: "REQUEST_COMPLETED"
    REQUEST_COMPLETED
    # enum value: "CANCELLED"
    CANCELLED
    # enum value: "TERMINATED"
    TERMINATED
    # enum value: "PROVISIONING_VERIFICATION_PENDING"
    PROVISIONING_VERIFICATION_PENDING
    # enum value: "REJECTED"
    REJECTED
    # enum value: "PROVISIONING_FAILED"
    PROVISIONING_FAILED
    # enum value: "NOT_ALL_ITEMS_PROVISIONED"
    NOT_ALL_ITEMS_PROVISIONED
    # enum value: "ERROR"
    ERROR
}
