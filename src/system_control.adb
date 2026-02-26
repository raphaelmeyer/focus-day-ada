with Sensors;

procedure System_Control is
   T8 : constant Sensors.Sensor := (Id => 808, Temperature_Value => <>);
   J6 : constant Sensors.Sensor := (Id => 160, Temperature_Value => <>);
begin
   loop
      Sensors.Display (T8);
      Sensors.Display (J6);
   end loop;
end System_Control;
