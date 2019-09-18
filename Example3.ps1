# Throwing an error to catch

try {
    # obligatory clearing of error variable for example
    $Error.Clear()

    Write-Output "This has some fancy code."
    # minding
    # my own
    # business
    Write-Output "I dont like what I see and" +
        "should handle it seperately when I see it"

    # simulating identifying an edge case
    if ($true){
        throw "This doesn't seem right"
    }
} catch{
    Clear-Host
    $Error[0]
    # $Error[0].CategoryInfo # Info about reason and category
    # $Error[0].Exception # Extracted issue
    # $Error[0].InvocationInfo # Finding the culprit
    # $Error[0].InvocationInfo.ScriptName # Finding the culprit; curated
    # $Error[0].ScriptStackTrace # Finding the needle in the hay stack
    # $Error[0].Exception.GetType().FullName # Segway into catching specfic error
}