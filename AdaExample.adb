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

begin
    a := 10;
    b := 20;
    Swap_Float (a, b);
    --Note the parameters here
    --match the generic specification

end AdaExample;
