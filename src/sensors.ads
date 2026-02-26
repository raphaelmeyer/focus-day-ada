package Sensors is

   type Sensor_Id is range 100 .. 999;
   type Surface_Temperature_C is delta 0.1 digits 3 range -20.0 .. 77.7;

   type Sensor_Kind is (Temperature, Level);

   type Sensor (Kind : Sensor_Kind) is record
      Id                : Sensor_Id;
      Temperature_Value : Surface_Temperature_C := 0.0;
   end record;

   procedure Display (S : Sensor);

end Sensors;
