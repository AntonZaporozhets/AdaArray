with Ada.Text_IO, Ada.Long_Integer_Text_IO, package_array;
use Ada.Text_IO, Ada.Long_Integer_Text_IO, package_array;

procedure Main is

begin
   Put("Input a size of array: ");
   size := Integer'Value(Get_Line);
   Put("Input a number of threads: ");
   thread := Integer'Value(Get_Line);
   init_arr(size);

   declare
      var_task : array (1..thread) of my_task;
   begin
      for i in 1..thread loop
         var_task(i).start((i-1)*size/thread+1, i*size/thread);
      end loop;
      New_Line;

      for i in 1..thread loop
         var_task(i).finish(sum);
         Put_Line(sum'img);
         result := result + sum;
      end loop;
      Put_Line("------");
      Put_Line(result'img);

      New_Line;
      Put("Check: ");
      Put_Line(part_sum(1, arr'Last)'img);
   end;

end Main;
