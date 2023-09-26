$Modulespath +=  [Environment]::GetEnvironmentVariable("PSModulePath")+";$PSScriptRoot\Modules\"
[Environment]::SetEnvironmentVariable("PSModulePath",$Modulespath)
