function [scenario, egoVehicle, egoWaypoints, actorWaypoints, allStatus, roadConfigs] = IntersectionUnprotectedStraightCrossexample()
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.14 (R2023a) and Automated Driving Toolbox 3.7 (R2023a).
% Generated on: 09-Aug-2023 17:26:36

% Construct a drivingScenario object.
scenario = drivingScenario("SampleTime", 1.0, "StopTime", 15.0);
actorWaypoints = cell(0);
allStatus = cell(0);
egoWaypoints = [-23.2079542936621 -5.86580669860298 0;
    -6.5 -5.8 0;
    21.7 -6 0;
    51.9 -5.8 0;
    83.8 -5.4 0];
roadConfigs = cell(0);

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
    'Position', [-23.2079542936621 -5.86580669860298 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car');
% speed = [5;5;5;5;5];
% trajectory(egoVehicle, waypoints, speed);

% Add the non-ego actors
car1 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [5.6 15.6 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car1');
waypoints = [5.6 15.6 0;
    5.4 -28.5 0;
    5.2 -72.2 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [10;0;10];
waittime = [0;0.5;0];
yaw = [NaN;NaN;NaN];
car1Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car1Status;
trajectory(car1, waypoints, speed, waittime);

car2 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [2.5 25.7 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car2');
waypoints = [2.5 25.7 0;
    2.2 -11.6 0;
    2.1 -60.9 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [10;10;10];
waittime = [0;0;0];
yaw = [NaN;NaN;NaN];
car2Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car2Status;
trajectory(car2, waypoints, speed);

car3 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [2.3 46 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car3');
waypoints = [2.3 46 0;
    1.8 1.5 0;
    1.8 -35.1 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [7;5;7];
waittime = [0;0;0];
yaw = [NaN;NaN;NaN];
car3Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car3Status;
trajectory(car3, waypoints, speed, waittime);

car4 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [5.8 41.3 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car4');
waypoints = [5.8 41.3 0;
    5.6 1.3 0;
    5.4 -20.5 0;
    5.1 -62.3 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [7;5;3;5];
waittime = [0;0;0;0];
yaw = [NaN;NaN;NaN;NaN];
car4Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car4Status;
trajectory(car4, waypoints, speed, waittime);

car5 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Position', [-1.4 52.9 0], ...
    'Mesh', driving.scenario.carMesh, ...
    'Name', 'Car5');
waypoints = [-1.4 52.9 0;
    -2.2 -60.7 0];
actorWaypoints{numel(actorWaypoints) + 1} = waypoints;
speed = [5;10];
waittime = [0;0];
yaw = [NaN;NaN];
car5Status = struct('speed', speed, 'waittime', waittime, 'yaw', yaw);
allStatus{numel(allStatus) + 1} = car5Status;
trajectory(car5, waypoints, speed, waittime);

