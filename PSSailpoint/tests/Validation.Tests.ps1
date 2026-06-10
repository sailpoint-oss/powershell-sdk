# Validation.Tests.ps1
#
# Migrated to per-partition V1 cmdlet names.
# All cmdlets are now sourced from partition modules (e.g. accounts_v1, transforms_v1).
# Function names no longer carry a version prefix (V3/Beta/V2024/V2026) since each
# partition module exposes a single unified set of cmdlets.

Describe 'Accounts' {
    It 'Returns results for Get-Accounts' {
        $Response = Get-Accounts -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Invoke-Paginate over accounts' {
        $Response = Invoke-Paginate "Get-Accounts" -Increment 50 -Limit 200 -InitialOffset 0 -WithHttpInfo

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
    It 'Returns results for Get-Transforms' {
        $Response = Get-Transforms -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'IdentityProfiles' {
    It 'Returns results for Get-IdentityProfiles with pagination' {
        # TODO partition-strategy: verify exact cmdlet name once identity-profiles partition is built
        $Response = Invoke-Paginate "Get-IdentityProfiles" -Increment 1 -InitialOffset 0 -Limit 5 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.Response.Count | Should -Be 5
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Sources' {
    It 'Returns results for Get-Sources' {
        $Response = Get-Sources -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Connectors' {
    It 'Returns results for Get-ConnectorList' {
        # TODO partition-strategy: verify exact cmdlet name once connectors partition is built
        $Response = Get-ConnectorList -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Entitlements' {
    It 'Returns results for Update-Entitlement' {
        # TODO partition-strategy: verify exact cmdlet name once entitlements partition is built
        $ENT = @(
            @{
                op    = "replace"
                path  = "/privileged"
                value = $false
            }
        )

        $Response = Update-Entitlement -Id "2c9180848366cdc701837b78f5ce58be" -JsonPatchOperation $ENT -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'Identities' {
    It 'Returns results for Get-Identities' {
        # TODO partition-strategy: verify exact cmdlet name once identities partition is built
        $Response = Get-Identities -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Set-DefaultConfiguration -Experimental $True

Describe 'TaskManagement' {
    It 'Returns results for Get-TaskStatusList' {
        # TODO partition-strategy: verify exact cmdlet name once task-management partition is built
        $Response = Get-TaskStatusList -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}
