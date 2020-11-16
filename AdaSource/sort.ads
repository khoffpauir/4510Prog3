generic
  -- generic type to accept all types (abstract) -- 
  type Item is private;

  -- overloading ">" operator for comparisons between generic types --
  with function ">" (E1, E2 :  Item) return Boolean is <>;
  type Index is (<>);
  type Array_List is array (Index range <>) of  Item;
procedure Sort(int_list : in out Array_List);