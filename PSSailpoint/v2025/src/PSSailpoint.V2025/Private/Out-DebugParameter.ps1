#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.Synopsis
    Helper function to format debug parameter output.
.Example
    $PSBoundParameters | Out-DebugParameter | Write-Debug
#>
function Out-DebugParameter {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipeline = $true, Mandatory = $true)]
        [AllowEmptyCollection()]
        $InputObject
    )

    Begin {
        $CommonParameters = Get-CommonParameters
    }

    Process {
        $InputObject.GetEnumerator() | Where-Object {
            $CommonParameters -notcontains $_.Key
        } | Format-Table -AutoSize -Property (
            @{
                Name = 'Parameter'
                Expression = {$_.Key}
            },
            @{
                Name = 'Value'
                Expression = {$_.Value}
            }
        ) | Out-String -Stream | ForEach-Object {
            if ($_.Trim()) {
                $_
            }
        }
    }
}
