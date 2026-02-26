with Ada.Text_IO;

package body Sensors is

   procedure Display (S : Sensor) is
   begin
      Ada.Text_IO.Put ("Sensor " & S.Id'Image & " reports ");
      Ada.Text_IO.Put (S.Temperature_Value'Image & " C");
      Ada.Text_IO.New_Line;
   end Display;

end Sensors;
