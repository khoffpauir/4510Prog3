with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure AdaPartA is
  x : Integer;
  y : Integer;
  z : Integer;
begin
   --  Print ask for input to the screen
   Ada.Text_IO.Put_Line ("Please enter two numbers: ");
   Get (x);
   Get (y);
   z := x + y;
   Put_Line(Integer'Image (x) & " + " & Integer'Image (y) & " = " & Integer'Image (z));
end AdaPartA;
