package body package_array is

   procedure init_arr(size : Integer) is
   begin
      for i in 1..size loop
         arr(i) := Long_Integer(i);
      end loop;
   end init_arr;
   
   function part_sum(left_ind, right_ind : in Integer) return Long_Integer is
      sum : Long_Integer := 0;
   begin
      for i in left_ind..right_ind loop
         sum := sum + arr(i);
      end loop;
      return sum;
   end part_sum;

   task body my_task is
      left, right : Integer;
      sum : Long_Integer;
   begin
      accept start(l, r : in Integer) do
         left := l;
         right := r;
      end start;
      sum := part_sum(left,right);
      accept finish(s : out Long_Integer) do
         s := sum;
      end finish;
   end my_task;   

end package_array;
