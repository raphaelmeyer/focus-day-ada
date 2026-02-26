with Sensors;

with Ada.Containers.Vectors;

package Machine is

   package Sensor_Vectors is new
     Ada.Containers.Vectors
       (Index_Type   => Natural,
        Element_Type => Sensors.Sensor_Access,
        "="          => Sensors."=");

   subtype Sensor_Vector is Sensor_Vectors.Vector;

   type Configuration is record
      Sensors : Sensor_Vector;
   end record;

   procedure Add_Sensor
     (Config : in out Configuration; Sensor : Sensors.Sensor_Access);
   procedure Monitor (Config : Configuration);

end Machine;
