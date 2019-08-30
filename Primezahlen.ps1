#Option 1

$input1=Read-Host "Please input a number"
for ($i=2; $i-le $input1; $i++) {
    $found=$true;
    for ($j=2; $j -lt $i; $j++) {
        if (($i % $j) -eq 0) {
            $found = $false;
            break;
        }
    }
    if ($found) {
        Write-Host $i;
    }
}


#Option 2

$input1=Read-Host "Please input a number"
for ($i=2; $i-le $input1; $i++) {
    $found=$true;
    for ($j=2; $j -lt $i; $j++) {
        if (([int]($i/$j))*$j -eq $i) {
            $found = $false;
            break;
        }
    }
    if ($found) {
        Write-Host $i;
    }
}


#Option 3

$input1=Read-Host "Please input a number"
for ($i=2; $i-le $input1; $i++) {
    $found=$true;
    for ($j=2; $j -lt $i; $j++) {
        if (($i/$j) -is [int]) {
            $found = $false;
            break;
        }
    }
    if ($found) {
        Write-Host $i;
    }
}
