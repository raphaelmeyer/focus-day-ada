with Ada.Text_IO;

package body Machine is

   procedure Add_Sensor
     (Config : in out Configuration; Sensor : Sensors.Sensor_Access) is
   begin
      Config.Sensors.Append (Sensor);
   end Add_Sensor;

   procedure Monitor (Config : Configuration) is
   begin
      loop
         Ada.Text_IO.Put_Line ("---");
         for Sensor of Config.Sensors loop
            Sensor.all.Display;
         end loop;
         delay 1.0;
      end loop;
   end Monitor;

end Machine;
