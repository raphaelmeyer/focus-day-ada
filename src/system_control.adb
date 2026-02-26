with Sensors;

procedure System_Control is
   T8 : Sensors.Sensor :=
     (Kind => Sensors.Temperature, Id => 808, Temperature_Value => <>);
   J6 : Sensors.Sensor :=
     (Kind => Sensors.Temperature, Id => 160, Temperature_Value => <>);
   S1 : Sensors.Sensor :=
     (Kind => Sensors.Level, Id => 101, Level_Value => <>);
begin
   loop
      Sensors.Update (T8);
      Sensors.Update (J6);
      Sensors.Update (S1);

      Sensors.Display (T8);
      Sensors.Display (J6);
      Sensors.Display (S1);
   end loop;
end System_Control;
