BeforeAll {
    . "$PSScriptRoot/Factorial.ps1"
}

Describe "Get-Factorial" {
    It "Returns 1 for 0" {
        Get-Factorial -Number 0 | Should -Be 1
    }

    It "Returns 120 for 5" {
        Get-Factorial -Number 5 | Should -Be 120
    }

    It "Throws error for negative number" {
        { Get-Factorial -Number -1 } | Should -Throw "Factorial is not defined for negative numbers"
    }
}