StormEvents2017finalProject = importStormEvents2017("StormEvents_2017_finalProject.csv");
StormEvents2017finalProject = StormEvents2017finalProject...
    (StormEvents2017finalProject.End_Date_Time < '2017-09-03 23:59:01',:);
StormEvents2017finalProject = StormEvents2017finalProject...
    (StormEvents2017finalProject.Begin_Date_Time >= '2017-08-17 00:00:00',:);

% Most Affected States
mostAffectedStates = groupsummary(StormEvents2017finalProject,...
    "State", "sum", "Property_Cost");
StormEvents2017finalProject = StormEvents2017finalProject(ismember...
    (StormEvents2017finalProject.State,{'LOUISIANA','TEXAS'}),:);
State = StormEvents2017finalProject.State;
Event_Type = StormEvents2017finalProject.Event_Type;

% New table for stete with event
viz = table(State, Event_Type);