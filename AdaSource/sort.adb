procedure Sort(int_list : in out Array_List) is
    -- temporary variable to represent abstract types --
    Temp : Item;
begin
  -- simple sorting algorithm for the values in Array_List --
  for i in int_list'Range loop
    for j in i..int_list'Last loop
      if int_list(i) > int_list(j) then
          Temp := int_list(i);
          int_list(i) := int_list(j);
          int_list(j) := Temp;
      end if;
    end loop;
  end loop;
end Sort;