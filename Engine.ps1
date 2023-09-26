using module ".\Modules\global\Application.psm1"


class Engine {
    [string] $configFilePath
    [Application[]] $applications

    Engine([String]$configFile){
        $this.configFilePath=$configFile
        #$this.loadConfig()        
    }    

    [void] loadConfig() {
        $json = Get-Content -Path $this.configFilePath -Raw | ConvertFrom-Json        
        foreach ($item in $json.applications) {
            $this.applications+=[Application]::new($item)
        }
    }
    [void] run() {       

    }
    
}

$engine=[Engine]::new("C:\work\BPI\Team_SRE\VScode_projects\Observability\config\Applications.json")
$engine.loadConfig()
Write-Host ( $engine|ConvertTo-Json -Depth 100)