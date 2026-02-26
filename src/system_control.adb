with Sensors;

procedure System_Control is
   T8 : constant Sensors.Sensor :=
     (Kind => Sensors.Temperature, Id => 808, Temperature_Value => <>);
   J6 : constant Sensors.Sensor :=
     (Kind => Sensors.Temperature, Id => 160, Temperature_Value => <>);
   S1 : constant Sensors.Sensor :=
     (Kind => Sensors.Level, Id => 101, Level_Value => <>);
begin
   loop
      Sensors.Display (T8);
      Sensors.Display (J6);
      Sensors.Display (S1);
   end loop;
end System_Control;
