
#***********************************************************************    
#Config Schema
#    "name":"traffic",
#    "type":"traffic",
#    "formula": "",
#    "query": "",
#    "url": "",
#    "datasource": "",
#    "intervals":[
#        {
#            "threshold" :0,
#            "value":1
#        },
#        {
#            "threshold" :1000,
#            "value":0
#        }
#    ],
#    "weight": "20"

class IndicatorConfig{
    [String]  $name
    [String]  $type
    [String]  $formula
    [String]  $query
    [String]  $url
    [String]  $dataSource
    [String]  $weight
    [string[]]$intervals
}