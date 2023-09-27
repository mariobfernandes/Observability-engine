enum ConsumerType {
    Elastic
    Influx
}

class Variable{
    [String] $name
    [String] $value
}
 Class Consumer{
    [String] $query
    [String] $url    
    [String] $credentials   
    [ConsumerType] $type
    [Variable[]] $variables
    Consumer(){}
    Consumer($config) {        
        $this.url=$config.url
        $this.query=$config.query
        $this.credentials=$config.credentials
    }
    [PSCustomObject] query(){
        throw("Must Override Method")
    } 
    [PSCustomObject] Agregate(){
        throw("Must Override Method")
    }
}