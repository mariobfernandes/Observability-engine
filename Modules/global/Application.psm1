
#***********************************************************************************
#File Schema
#"id":"930",
#"type": "simple",
#"window":"5m",
#"aggregation":"avg",
#"formula":"%{traffic}+%{latency}+%{errors}+%{saturation}",
#"silent":[
#    {
#        "day":"*",
#        "start": "00:00:00",
#        "end": "08:00:00"
#    },
#    {
#        "day":"*",
#        "start": "21:00:00",
#        "end": "23:59:50"
#    },
#    {
#        "day":"saturday",
#        "start": "00:00:00",
#        "end": "23:59:59"
#    },
#    {
#        "day":"sunday",
#        "start": "00:00:00",
#        "end": "23:59:59"
#    }
#],
#"schedule": "1m",
#"data-center":"join",
#"indicators":[
using module ".\SilentPeriod.psm1"
using module ".\..\Indicators\Indicator.psm1"
using module ".\..\Providers\Producer.psm1"
using module ".\Levels.psm1"
enum DataCenterMode {
    Joined
    Unique
}
enum ApplicationType {
    Simple
    Complex
}
Class Application{
    [String] $id
    [ApplicationType] $type
    [String] $window
    [String] $aggregation
    [String] $formula
    [SilentPeriod[]] $silent
    [String] $schedule
    [DataCenterMode] $dataCenterMode
    [Indicator[]] $indicators
    [Producer] $producer
    [Levels] $levels
    Application($item){
        $this.id=$item.id
        $this.type=[ApplicationType]$item.type
        $this.window=$item.window
        $this.aggregation=$item.aggregation
        $this.formula=$item.formula
        $this.schedule=$item.schedule
        $this.dataCenterMode=[DataCenterMode]$item.dataCenterMode     
        $item.silent.foreach({$this.silent+=[SilentPeriod]::new($_)})
        $item.indicators.foreach({$this.indicators+=[Indicator]::new($_)})
        $this.levels=[Levels]::new($item.levels)
    }

}

