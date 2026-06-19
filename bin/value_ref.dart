

void main(){

  List x = [1,2,3];
  List k = [];
  for(var e in x){
    k.add(e);
  }
  addOne(List.from(x));
  addOne(k);
  print(x);
  print(k);
}

void addOne(List x){
  List z = x;
  z.add(4);
}