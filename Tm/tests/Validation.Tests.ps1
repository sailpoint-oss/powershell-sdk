Describe 'V3' {
    It 'Returns results for Get-Accounts' {
        $Response = Get-Accounts -WithHttpInfo
        
        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200

    }

    It 'Returns results for Invoke-Paginate' {
        $Response = Invoke-Paginate "Get-Accounts" -Increment 50 -Limit 200 -InitialOffset 0 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Invoke-PaginateSearch' {
        $Json = @"
        {
            "indices": [
                "identities"
            ],
            "query": {
                "query": "*",
            },
            "sort": ["-name"]
        }
"@

        $Search = ConvertFrom-JsonToSearch -Json $Json
        $Response = Invoke-PaginateSearch -Increment 10 -Limit 100 -Search $Search -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Get-Transforms' {
        $Response = Get-Transforms -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

}


Describe 'Beta' {
    It 'Returns results for Get-BetaAccounts' {
        $Response = Get-Accounts -WithHttpInfo
        
        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200

    }

    It 'Returns results for Invoke-Paginate' {
        $Response = Invoke-Paginate "Get-BetaIdentityProfiles" -Increment 1 -InitialOffset 0 -Limit 5 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.Response.Count | Should -Be 5
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Get-Sources' {
        $Response = Get-Sources -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Get-Connectors' {
        $Response = Get-BetaConnectorList -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Patch-Entitlement' {
        $ENT = @(
            @{
                op    = "replace"
                path  = "/privileged"
                value = $false
            }
        )

        $Response = Update-BetaEntitlement -Id "2c9180848366cdc701837b78f5ce58be" -JsonPatchOperation $ENT -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200

    }

}

Set-DefaultConfiguration -Experimental $True

Describe 'V2024' {
    It 'Returns results for Get-V2024Identities' {
        $Response = Get-V2024Identities -WithHttpInfo
        
        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200

    }

}

