/*
fun sum :
int? a, int? b

result = a + b;
return result;

 */

late int x;
int? y ;
String? s ;

void main(){
  // print(x+5);

  y = 10;

  // int z = y! + 5;
  int z = (y??0) + 5;
  print(z);

  // s= 'hello';
  if(s?.contains('h') == true){
    print('test');
  }
}

