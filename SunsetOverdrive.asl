// Contains functionality for load removal & autostart
state("Sunset")
{
    bool loading : 0x433AF28;
//  int detailedObj : 0x3C22654;
    int objective : 0x38E7270;
}

start 
{
    return current.objective == 1 && old.objective == 0 && !current.loading;
}

update
{
//DEBUG CODE
//print(current.playerControl.ToString());  
//print(current.objective.ToString()); 
}

isLoading
{
    return current.loading;
}

exit
{
	timer.IsGameTimePaused = true;
}