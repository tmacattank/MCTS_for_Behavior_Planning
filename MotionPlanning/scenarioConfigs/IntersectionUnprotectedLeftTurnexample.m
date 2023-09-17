function [scenario, egoVehicle, egoWaypoints, actorWaypoints, allStatus, roadConfigs] = IntersectionUnprotectedLeftTurnexample()
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.14 (R2023a) and Automated Driving Toolbox 3.7 (R2023a).
% Generated on: 23-Aug-2023 02:17:09

% Construct a drivingScenario object.
scenario = drivingScenario("SampleTime",1.0, "StopTime",15.0);
actorWaypoints = cell(0);
allStatus = cell(0);
roadConfigs = cell(0);
egoWaypoints = [-24.6299255545614 -2.56894528225413 0;
    -5.5 -2.2 0;
    13.1 12.4 pi/2;
    13.6 59.6 pi/2];

% Add all road segments
roadCenters = [-68.9 -0.5 0;
    100.2 0 0];
marking = [laneMarking('Solid', 'Color', [0.98 0.86 0.36])
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('DoubleSolid', 'Color', [0.9 0.9 0.3])
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(6, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');
tempRoad = struct('roadCenters', roadCenters, 'marking', marking, ...
    'laneSpecification', laneSpecification);
roadConfigs{numel(roadConfigs) + 1} = tempRoad;


roadCenters = [8.1 70.8 0;
    7.2 -79.3 0];
marking = [laneMarking('Solid', 'Color', [0.98 0.86 0.36])
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('DoubleSolid', 'Color', [0.96 0.98 0.3])
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(6, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');
tempRoad = struct('roadCenters', roadCenters, 'marking', marking, ...
    'laneSpecification', laneSpecification);
roadConfigs{numel(roadConfigs) + 1} = tempRoad;

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [-24.6299255545614 -2.56894528225413 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car');

% Add the non-ego actors
car1 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [9 -35.8 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car1');
waypoints = [9 -35.8 0;
    9.3 -21.6 0;
    8.7 -7.7 0;
    4.6 -0.6 0;
    -2.4 1.5 0;
    -19.3 1.8 0;
    -49.8 1.8 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [10;10;10;10;10;10;10];
waittime = [0;0;0;0;0;0;0];
yaw = [NaN;NaN;NaN;NaN;NaN;NaN;NaN];
car1Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car1Status;
trajectory(car1, waypoints, speed);

car2 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [12.7152983076404 -39.7429492284631 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car2');
waypoints = [12.7152983076404 -39.7429492284631 0;
    13.1 -23 0;
    12.4 -9.1 0;
    6.1 1.3 0;
    -5.7 4.9 0;
    -19 5.2 0;
    -35.1 5.2 0;
    -51.7 5.2 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [10;10;10;10;10;10;10;10];
waittime = [0;0;0;0;0;0;0;0];
yaw = [NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN];
car2Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car2Status;
trajectory(car2, waypoints, speed);

car3 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [71.500353038991 1.39144962374758 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car3');
waypoints = [71.500353038991 1.39144962374758 0;
    20.1 1.3 0;
    8.8 -0.7 0;
    0.4 -9.2 0;
    -1.6 -25.2 0;
    -2.1 -70.4 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [5;5;5;5;5;5];
waittime = [0;0;0;0;0;0];
yaw = [NaN;NaN;NaN;NaN;NaN;NaN];
car3Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car3Status;
trajectory(car3, waypoints, speed, waittime);

car4 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [32 4.9 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car4');
waypoints = [32 4.9 0;
    11.4 4.1 0;
    4.8 1.8 0;
    2.5 -6.6 0;
    2.2 -67.1 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [4;5;5;5;5];
waittime = [0;0;0;0;0];
yaw = [NaN;NaN;NaN;NaN;NaN];
car4Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car4Status;
trajectory(car4, waypoints, speed, waittime);

car5 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [51.1972541323281 8.77338458207971 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car5');
waypoints = [51.1972541323281 8.77338458207971 0;
    37.3 8.5 0;
    24 8.7 0;
    16.3 11 0;
    13 20.9 0;
    13.2 43.5 0;
    13.2 68.7 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [5;5;5;5;5;5;5];
waittime = [0;0;0;0;0;0;0];
yaw = [NaN;NaN;NaN;NaN;NaN;NaN;NaN];
car5Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car5Status;
trajectory(car5, waypoints, speed);

