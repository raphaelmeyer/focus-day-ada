with Ada.Text_IO;

package body Sensors is

   procedure Display (S : Sensor) is
   begin
      Ada.Text_IO.Put ("Sensor " & S.Id'Image & " reports ");

      case S.Kind is
         when Sensors.Temperature =>
            Ada.Text_IO.Put (S.Temperature_Value'Image & " C");

         when Sensors.Level       =>
            Ada.Text_IO.Put (S.Level_Value'Image & " ml");
      end case;

      Ada.Text_IO.New_Line;
   end Display;

   procedure Update (S : in out Sensor) is
   begin
      case S.Kind is
         when Sensors.Temperature =>
            if S.Temperature_Value < Sensors.Surface_Temperature_C'Last then
               S.Temperature_Value :=
                 S.Temperature_Value + Sensors.Surface_Temperature_C'Delta;
            else
               S.Temperature_Value := Sensors.Surface_Temperature_C'First;
            end if;

         when Sensors.Level       =>
            null;

      end case;
   end Update;

end Sensors;
