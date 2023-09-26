#$Modulespath +=  [Environment]::GetEnvironmentVariable("PSModulePath")+";$PSScriptRoot\Modules\"
#[Environment]::SetEnvironmentVariable("PSModulePath",$Modulespath)


Install-Module -Name Pester -Force -SkipPublisherCheck



