$localpath = "localpath"
$remotepath = "remotepath1"
$remotepath2server = "remotepath2"
gci -recurse -File $remotepath | where-object {(new-timespan $_.LastWriteTime).days -eq 2} | Copy-Item -Destination $localpath 
gci -recurse -File $remotepath2server | where-object {(new-timespan $_.LastWriteTime).days -eq 2} | Copy-Item -Destination $localpath 