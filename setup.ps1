
Install-Module -Name Pester -Force -SkipPublisherCheck
$PesterPreference = [PesterConfiguration]::Default
$PesterPreference.Output.Verbosity = 'Detailed'


  