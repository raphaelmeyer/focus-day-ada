with Ada.Text_IO;

package body Sensors is

   protected body Sensor is

      procedure Initialize (Id : Sensor_Id) is
      begin
         Instance.Id := Id;
      end Initialize;

      procedure Display is
      begin
         Ada.Text_IO.Put ("Sensor " & Instance.Id'Image & " reports ");

         case Instance.Kind is
            when Sensors.Temperature =>
               Ada.Text_IO.Put (Instance.Temperature_Value'Image & " C");

            when Sensors.Level       =>
               Ada.Text_IO.Put (Instance.Level_Value'Image & " ml");
         end case;

         Ada.Text_IO.New_Line;
      end Display;

      procedure Update is
      begin
         case Instance.Kind is
            when Sensors.Temperature =>
               if Instance.Temperature_Value
                 < Sensors.Surface_Temperature_C'Last
               then
                  Instance.Temperature_Value :=
                    Instance.Temperature_Value
                    + Sensors.Surface_Temperature_C'Delta;
               else
                  Instance.Temperature_Value :=
                    Sensors.Surface_Temperature_C'First;
               end if;

            when Sensors.Level       =>
               if Instance.Level_Value < Sensors.Fill_Level_Milliliter'Last
               then
                  Instance.Level_Value :=
                    Sensors.Fill_Level_Milliliter'Succ (Instance.Level_Value);
               else
                  Instance.Level_Value := Sensors.Fill_Level_Milliliter'First;
               end if;

         end case;
      end Update;

   end Sensor;

   task body Sensor_Update is
   begin
      loop
         Sensor.Update;
         delay 0.1;
      end loop;
   end Sensor_Update;

end Sensors;
