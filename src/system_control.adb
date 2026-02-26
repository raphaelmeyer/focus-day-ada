with Sensors;
with Machine;

procedure System_Control is
   T8 : constant Sensors.Sensor_Access :=
     new Sensors.Sensor (Kind => Sensors.Temperature);
   J6 : constant Sensors.Sensor_Access :=
     new Sensors.Sensor (Kind => Sensors.Temperature);
   S1 : constant Sensors.Sensor_Access :=
     new Sensors.Sensor (Kind => Sensors.Level);

   T8_Update : Sensors.Sensor_Update (T8);
   J6_Update : Sensors.Sensor_Update (J6);
   S1_Update : Sensors.Sensor_Update (S1);

   Machine_Config : Machine.Configuration;
begin
   T8.Initialize (808);
   J6.Initialize (160);
   S1.Initialize (101);

   Machine.Add_Sensor (Machine_Config, T8);
   Machine.Add_Sensor (Machine_Config, J6);
   Machine.Add_Sensor (Machine_Config, S1);

   Machine.Monitor (Machine_Config);
end System_Control;
