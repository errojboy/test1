Write-Output "This is a test132."

if ($?) {
    Write-Output "The previous command succeeded. Impossible to read this"
} else {
    Write-Output "The previous command failed. I'm choosing this file"
}
