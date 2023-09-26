enum ConsumerType {
    Elastic
    Influx
}
 Class Consumer{
    [String] $query
    [String] $url
    [ConsumerType] $type
    Consumer($purl,$pquery) {        
        $this.url=$purl
        $this.query=$pquery                
    }
}