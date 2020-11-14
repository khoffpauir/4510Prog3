with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure AdaExample is
  generic
    type Item is private; --this is a generic parameter
  procedure Swap(X, Y: in out Item) is
    T: Item;
  begin
    T := X;
    X := Y;
    Y := T;
  end Swap;

-- an instantiation, which provide the actual generic parameter.
procedure Swap_Float is new Swap(Float);
-- Swap_Float can now be called..
a, b: float;

  generic 
      type ItemType is private;
      type Index_Type is (<>);  -- Any discrete type
      type Array_Type is array (Index_Type range <>) of ItemType;
      with function "<"(X, Y: ItemType) 
          return Boolean is <>;  -- Use default if not specified
  procedure generic_sort(A: Array_Type);

  procedure generic_sort(A: Array_Type) is 
    T: Item;
  begin
    for (int i = 0; i < array.length; i++) {
        int min = array[i];
        int minId = i;
        for (int j = i+1; j < array.length; j++) {
            if (array[j] < min) {
                min = array[j];
                minId = j;
            }
        }
        -- swapping
        int temp = array[i];
        array[i] = min;
        array[minId] = temp;
    }
  }
  end generic_sort;

begin
    a := 10;
    b := 20;
    Swap_Float (a, b);
    --Note the parameters here
    --match the generic specification
end AdaExample;
