#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum CriteriaType.

.DESCRIPTION

Type of the criteria in the filter. The `COMPOSITE` filter can contain multiple filters in an AND/OR relationship.
#>

enum CriteriaType {
    # enum value: "COMPOSITE"
    COMPOSITE
    # enum value: "ROLE"
    ROLE
    # enum value: "IDENTITY"
    IDENTITY
    # enum value: "IDENTITY_ATTRIBUTE"
    IDENTITY_ATTRIBUTE
    # enum value: "ENTITLEMENT"
    ENTITLEMENT
    # enum value: "ACCESS_PROFILE"
    ACCESS_PROFILE
    # enum value: "SOURCE"
    SOURCE
    # enum value: "ACCOUNT"
    ACCOUNT
    # enum value: "AGGREGATED_ENTITLEMENT"
    AGGREGATED_ENTITLEMENT
    # enum value: "INVALID_CERTIFIABLE_ENTITY"
    INVALID_CERTIFIABLE_ENTITY
    # enum value: "INVALID_CERTIFIABLE_BUNDLE"
    INVALID_CERTIFIABLE_BUNDLE
}

