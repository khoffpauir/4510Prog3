cd ../AdaSource/
gcc main.adb -c -o main.o
gcc sort.adb -c -o sort.o
gnatbind main
gnatlink main
mv main ../Scripts/
rm *.o
rm *.ali
cd ../Scripts/
./main