package package_array is
   
   size : Integer;
   thread : Integer;
   sum : Long_Integer;
   result : Long_Integer := 0;
   arr : array (1..100000) of Long_Integer;
   procedure init_arr(size : Integer);
   function part_sum(left_ind, right_ind : in Integer) return Long_Integer;
   
   task type my_task is
      entry start(l, r : in Integer);
      entry finish(s : out Long_Integer);
   end my_task;

end package_array;
