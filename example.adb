with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Example is
  generic
    type Item is private; --this is a generic parameter
  procedure Swap(X, Y: in out Item);

  -- each generic unit has a body --
  procedure Swap(X, Y: in out Item) is
    T: Item;
  begin
    T := X;
    X := Y;
    Y := T;
  end Swap;

  -- an instantiation, which provide the actual generic parameter.
  procedure Swap_Integer is new Swap(Integer);

-- Swap_Integer can now be called..
  a, b: integer;

begin
    a := 10;
    b := 20;
    Put_Line("A is: " & Integer'Image (a));
    Put_Line("B is: " & Integer'Image (b));
    Swap_Integer (a, b);
    Put_Line("A is: " & Integer'Image (a));
    Put_Line("B is: " & Integer'Image (b));
    --Note the parameters here
    --match the generic specification

end Example;