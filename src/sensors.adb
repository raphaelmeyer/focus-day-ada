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

end Sensors;
