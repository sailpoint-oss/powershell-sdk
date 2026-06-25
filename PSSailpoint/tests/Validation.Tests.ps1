# Validation.Tests.ps1
#
# Migrated to per-partition versioned cmdlet names.
# All cmdlets are sourced from partition modules (e.g. accounts, transforms).
# Each function carries its API version suffix (e.g. V1) so that future API
# versions (V2, V3, …) can coexist in the same session.

BeforeAll {
    . (Join-Path $PSScriptRoot '..' 'Configuration.ps1')
    . (Join-Path $PSScriptRoot '..' 'Pagination.ps1')
    Import-Module -Name (Join-Path $PSScriptRoot '..' 'PSSailpoint.psm1') -Force -Global
}

Describe 'Accounts' {
    It 'Returns results for Get-AccountsV1' {
        $Response = Get-AccountsV1 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Invoke-Paginate over accounts' {
        $Response = Invoke-Paginate "Get-AccountsV1" -Increment 50 -Limit 200 -InitialOffset 0 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Search' {
    It 'Returns results for Invoke-PaginateSearch' {
        $Json = @"
        {
            "indices": [
                "identities"
            ],
            "query": {
                "query": "*"
            },
            "sort": ["-name"]
        }
"@

        $Search = ConvertFrom-JsonToSearch -Json $Json
        $Response = Invoke-PaginateSearch -Increment 10 -Limit 100 -Search $Search -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Transforms' {
    It 'Returns results for Get-TransformsV1' {
        $Response = Get-TransformsV1 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'IdentityProfiles' {
    It 'Returns results for Get-IdentityProfilesV1 with pagination' {
        $Response = Invoke-Paginate "Get-IdentityProfilesV1" -Increment 1 -InitialOffset 0 -Limit 5 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.Response.Count | Should -Be 5
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Sources' {
    It 'Returns results for Get-SourcesV1' {
        $Response = Get-SourcesV1 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Connectors' {
    It 'Returns results for Get-ConnectorListV1' {
        $Response = Get-ConnectorListV1 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Entitlements' {
    It 'Returns results for Update-EntitlementV1' {
        $ENT = @(
            @{
                op    = "replace"
                path  = "/privileged"
                value = $false
            }
        )

        $Response = Update-EntitlementV1 -Id "2c9180848366cdc701837b78f5ce58be" -JsonPatchOperation $ENT -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Identities' {
    It 'Returns results for Get-IdentitiesV1' {
        $Response = Get-IdentitiesV1 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'TaskManagement' {
    BeforeAll {
        Set-DefaultConfiguration -Experimental $True
    }

    It 'Returns results for Get-TaskStatusListV1' {
        $Response = Get-TaskStatusListV1 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'NERM' {
    BeforeAll {
        $Config = Get-DefaultConfiguration
        if ([string]::IsNullOrEmpty($Config.NermBaseUrl)) {
            Set-ItResult -Skipped -Because 'NermBaseUrl is not configured'
        }
    }

    It 'Returns results for Get-NERMUsers' {
        $Response = Get-NERMUsers -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Invoke-NERMV2025DelegationsGet' {
        $Response = Invoke-NERMV2025DelegationsGet -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}
