with Sensors;
with Machine;

procedure System_Control is
   T8 : constant Sensors.Sensor_Access :=
     new Sensors.Sensor'
       (Kind => Sensors.Temperature, Id => 808, Temperature_Value => <>);
   J6 : constant Sensors.Sensor_Access :=
     new Sensors.Sensor'
       (Kind => Sensors.Temperature, Id => 160, Temperature_Value => <>);
   S1 : constant Sensors.Sensor_Access :=
     new Sensors.Sensor'(Kind => Sensors.Level, Id => 101, Level_Value => <>);

   Machine_Config : Machine.Configuration;
begin
   Machine.Add_Sensor (Machine_Config, T8);
   Machine.Add_Sensor (Machine_Config, J6);
   Machine.Add_Sensor (Machine_Config, S1);

   Machine.Monitor (Machine_Config);
end System_Control;
