package Sensors is

   type Sensor_Id is range 100 .. 999;
   type Surface_Temperature_C is delta 0.1 digits 3 range -20.0 .. 77.7;
   type Fill_Level_Milliliter is range 0 .. 450;

   type Sensor_Kind is (Temperature, Level);

   type Sensor_Type (Kind : Sensor_Kind) is record
      Id : Sensor_Id;

      case Kind is
         when Temperature =>
            Temperature_Value : Surface_Temperature_C := 0.0;

         when Level =>
            Level_Value : Fill_Level_Milliliter := 0;

      end case;
   end record;

   protected type Sensor (Kind : Sensor_Kind) is
      procedure Initialize (Id : Sensor_Id);
      procedure Display;
      procedure Update;
   private
      Instance : Sensor_Type (Kind);
   end Sensor;

   type Sensor_Access is access Sensor;

   task type Sensor_Update (Sensor : Sensor_Access);

end Sensors;
