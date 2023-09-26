#**********************************************************************************
#file schema
#    {
#        "day":"*",
#        "start": "21:00:00",
#        "end": "23:59:50"
#    },
enum SlientWeekDayType {
    Any
    BusinessDay
    Weekend
    Holiday
    Sunday
    Monday
    Tuesday
    Thursday
    Friday
    Saturday
}
Class SilentPeriod{
    [SlientWeekDayType] $day
    [string] $start
    [string] $end
    SilentPeriod($item){
        $this.day=[SlientWeekDayType] $item.day
        $this.start=$item.start
        $this.end=$item.end

    }
}