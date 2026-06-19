/*

 loop{
  displayMenu()
  option => input
  if option == 1:
    bookNewSeat()
 else if option == 2:
  displayTheaterSeats()
 else if option == 3:
  displayUsersData()
  else if option == 4:
    exit()

   }
   bookNewSeat(){
    row, column, phone, name => input
    checkRowColumnInRange()
    CheckSeatAvailable()
    seats[row][column] = "B"
    usersData[row][column] = [name, phone]
    print("seat is reserved successfully")
   }

  displayMenu(){
    print("Welcome To Our Theater")
    print("press 1 to book new seat")
    print("press 2 to show the theater seats")
    print("press 3 to show users data")
    print("press 4 to exit")
  }


*/



import 'dart:io';
List<List<String>> seats = List.generate(5, (int index) {
  return List.generate(5, (int index) => 'E');
});
List<Map<String, dynamic>> usersData =[];

void main() {



  displayMenu();
  String option = stdin.readLineSync()!;
  if(option == '1'){
    bookNewSeat();
  }
}
void bookNewSeat(){
  int row = int.tryParse(stdin.readLineSync()??'')!;
  int column = int.tryParse(stdin.readLineSync()??'')!;
  String? name = stdin.readLineSync();
  String? phone = stdin.readLineSync();

  if(row >5 || column >5|| row < 0 || column < 0){
    print('row or column invalid');
    return;
  }

  if(seats[row-1][column-1] == 'B'){
    print('seat is already reserved');
    return;
  }
  seats[row-1][column-1] = 'B';
  usersData.add({
    'row': row,
    'column': column,
    'name': name,
    'phone': phone
  });
}

void displayMenu(){
  print('Welcome To Our Theater');
  print('press 1 to book new seat');
  print('press 2 to show the theater seats');
  print('press 3 to show users data');
  print('press 4 to exit');
}

