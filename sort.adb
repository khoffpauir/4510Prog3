

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Sort is
   type Fruit_Type is (Apple, Banana, Orange, Cherry, Watermelon, Plum, Coconut, Pineapple, Carrot);

   type Fruit is record
      Name : Fruit_Type;
   end record;

   function Greater(F1: Fruit; F2: Fruit) return boolean is
   begin
      return F1.Name'Image < F2.Name'Image;
   end Greater;


   procedure Print(F : Fruit) is
   begin
      Put_Line(F.Name'Image);
   end Print;

   package Fruit_Vector is new Ada.Containers.Vectors(Index_Type   => Natural,
                                                       Element_Type => Fruit);
   use Fruit_Vector;
   package Fruit_Sort is new Generic_Sorting(Greater);
   use Fruit_Sort;

   V : Vector;
   Temp : Fruit;
begin

  for FT in Fruit_Type loop
    Temp.Name := FT;
    V.Append(Temp);
  end loop;

  Put_Line("Unsorted list:");
  for F of V loop
    Print(F);
  end loop;
  New_Line;

  Sort(V);

  Put_Line("Sorted list:");

  for F of V loop
    Print(F);
  end loop;

end Sort;