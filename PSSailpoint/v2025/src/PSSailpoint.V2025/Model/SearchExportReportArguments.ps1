#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Arguments for Search Export report (SEARCH_EXPORT)  The report file generated will be a zip file containing csv files of the search results. 

.PARAMETER Indices
The names of the Elasticsearch indices in which to search. If none are provided, then all indices will be searched.
.PARAMETER Query
The query using the Elasticsearch [Query String Query](https://www.elastic.co/guide/en/elasticsearch/reference/5.2/query-dsl-query-string-query.html#query-string) syntax from the Query DSL extended by SailPoint to support Nested queries.
.PARAMETER Columns
Comma separated string consisting of technical attribute names of fields to include in report.  Use `access.spread`, `apps.spread`, `accounts.spread` to include respective identity access details.  Use `accessProfiles.spread` to unclude access profile details.  Use `entitlements.spread` to include entitlement details. 
.PARAMETER Sort
The fields to be used to sort the search results. Use + or - to specify the sort direction.
.OUTPUTS

SearchExportReportArguments<PSCustomObject>
#>

function Initialize-V2025SearchExportReportArguments {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Indices},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Columns},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Sort}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025SearchExportReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Query) {
            throw "invalid value for 'Query', 'Query' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "indices" = ${Indices}
            "query" = ${Query}
            "columns" = ${Columns}
            "sort" = ${Sort}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SearchExportReportArguments<PSCustomObject>

.DESCRIPTION

Convert from JSON to SearchExportReportArguments<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SearchExportReportArguments<PSCustomObject>
#>
function ConvertFrom-V2025JsonToSearchExportReportArguments {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025SearchExportReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025SearchExportReportArguments
        $AllProperties = ("indices", "query", "columns", "sort")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'query' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) {
            throw "Error! JSON cannot be serialized due to the required property 'query' missing."
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "indices"))) { #optional property not found
            $Indices = $null
        } else {
            $Indices = $JsonParameters.PSobject.Properties["indices"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "columns"))) { #optional property not found
            $Columns = $null
        } else {
            $Columns = $JsonParameters.PSobject.Properties["columns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sort"))) { #optional property not found
            $Sort = $null
        } else {
            $Sort = $JsonParameters.PSobject.Properties["sort"].value
        }

        $PSO = [PSCustomObject]@{
            "indices" = ${Indices}
            "query" = ${Query}
            "columns" = ${Columns}
            "sort" = ${Sort}
        }

        return $PSO
    }

}

