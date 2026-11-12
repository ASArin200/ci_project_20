function Get-Factorial {
    param ([int]$Number)
    if ($Number -lt 0) throw "Factorial is not defined for negative numbers"
    if ($Number -le 1) { return 1 }
    $result = 1
    for ($i = 2; $i -le $Number; $i++) { $result *= $i }
    return $result
}
