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
         #avaliar proximas execuções já expiradas
         #executar apenas estas
            foreach ($application in $this.applications) {
                foreach ($indicator in $application.indicators) {
                    $indicator.provider.query()                    
                }
                #pedir à aplicação para aplicar a formula
                #Persistir Informação ( Producer.persist())
                #calcular proximas execuções
                #persistir execuções
        }
        #reavaliar execuções pendentes
    }
    
}