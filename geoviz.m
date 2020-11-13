% Geo-visualization of the data
viz.State = removecats(viz.State);
geobubble(StormEvents2017finalProject.Begin_Lat, StormEvents2017finalProject.Begin_Lon,...
    StormEvents2017finalProject.Property_Cost, viz.State)

legend show

title('Location of the Event')