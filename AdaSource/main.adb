-- Names: Nathan Markle and Kyle Hoffpauir
-- Date: 11/10/2020
-- Description: main.adb will utilize the sort.adb and sort.ads files to create generic
--    procedures, functions and objects to handle abstract data types and algorithms.
--    Various lists will be created and passes into the abstract sorting procedure to be sorted
--    and printed out to the screen.
--
-- To run:
--    cd ../Scripts/
--    chmod +x compile_and_run.sh
--    ./compile_and_run.sh

with Text_Io;
use Text_Io;
with sort;

procedure Main is
  --set length of array to 10
  Length : Integer := 10;
  type arr is array(Positive range <>) of Integer;
  --procedure instantiation with array of integers
  procedure Sort_Main is new Sort(Item => Integer, INDEX => Positive, Array_List => arr);
  List1 : arr(1..10);
  List2 : arr(1..10);
  List3 : arr(1..10);
  List4 : arr(1..10);

begin
  -- Make testing lists --
  List1 := (1, 4, 5, 2, 65, 1, 5, 2, 5, 9);
  List2 := (-1, -4, -5, -2, -65, -1, -5, -2, -5, -9);
  List3 := (-5, -4, -3, -2, -1, 0, 1, 2, 3, -459);
  List4 := (01, 14, 52, -21, 65, 101, -5, 2, 59, 91);

  put("Test One: ");
  New_Line;
  put("List before: ");
  for i in 1..Length loop 
    put(Integer'Image(List1(I)) & " ");
  end loop;
  New_Line;
  --sort the array
  Sort_Main(List1);
  --output the array 
  put("List after sort: ");
  for I in 1..Length loop 
    put(Integer'Image(List1(I)) & " ");
  end loop;
  New_Line;
  New_Line;

  put("Test Two: ");
  New_Line;
  put("List before: ");
  for i in 1..Length loop 
    put(Integer'Image(List2(I)) & " ");
  end loop;
  New_Line;
  --sort the array
  Sort_Main(List2);
  --output the array 
  put("List after sort: ");
  for I in 1..Length loop 
    put(Integer'Image(List2(I)) & " ");
  end loop;
  New_Line;
  New_Line;

  put("Test Three: ");
  New_Line;
  put("List before: ");
  for i in 1..Length loop 
    put(Integer'Image(List3(I)) & " ");
  end loop;
  New_Line;
  --sort the array
  Sort_Main(List3);
  --output the array 
  put("List after sort: ");
  for I in 1..Length loop 
    put(Integer'Image(List3(I)) & " ");
  end loop;
  New_Line;
  New_Line;

  put("Test Four: ");
  New_Line;
  put("List before: ");
  for i in 1..Length loop 
    put(Integer'Image(List4(I)) & " ");
  end loop;
  New_Line;
  --sort the array
  Sort_Main(List4);
  --output the array 
  put("List after sort: ");
  for I in 1..Length loop 
    put(Integer'Image(List4(I)) & " ");
  end loop;
  New_Line;
  New_Line;

end Main;