% freq of events in Tx
onlyTexas = StormEvents2017finalProject(StormEvents2017finalProject.State == 'TEXAS',:);
threeCounties = groupsummary(onlyTexas, "CZ_Name");
threeCounties = sortrows(threeCounties,'GroupCount','descend');
threeCounties = threeCounties(1:3,:);

%freq of events in Lu
onlyLouisiana = StormEvents2017finalProject...
    (StormEvents2017finalProject.State == 'LOUISIANA',:);
threeCountiesL = groupsummary(onlyLouisiana, "CZ_Name");
threeCountiesL = sortrows(threeCountiesL,'GroupCount','descend');
threeCountiesL = threeCountiesL(1:3,:);

%total damage in Tx
threeCountiesTexProp = groupsummary(onlyTexas,...
    "CZ_Name", "sum", "Property_Cost");
threeCountiesTexProp = threeCountiesTexProp...
    (~ismissing(threeCountiesTexProp.sum_Property_Cost),:);
threeCountiesTexProp = sortrows(threeCountiesTexProp,...
    'sum_Property_Cost','descend');
threeCountiesTexProp = threeCountiesTexProp(1:3,:);

%total damage in Lu
threeCountiesLouProp = groupsummary(onlyLouisiana,...
    "CZ_Name", "sum", "Property_Cost");
threeCountiesLouProp = sortrows(threeCountiesLouProp,...
    'sum_Property_Cost','descend');
threeCountiesLouProp = threeCountiesLouProp(1:3,:)