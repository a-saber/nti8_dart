void main(){
  int x = 5;
  // x= "Hello";
  x.isEven;

  var y = 5;
  y.isEven;
  // y = "Hello";
  

  var s = "Hello";
  s.length;
  // s = 5;


  dynamic d = 5;
  d.isEven;
  (d as int).isNegative;
  d = "Hello";
  (d as String).length;
  d = true; 
  d = [1, 2, 3];
  (d as int).isEven;
  int sum1 = d + 3;


  Object k = 5;
  int sum2 = (k as int) + 3;
  k = "Hello";
  (k as String).length;
  k = true;
  k = [1, 2, 3];

}