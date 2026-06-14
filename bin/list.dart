void main(){
  List<int> myList = [1, 2, 3];
  myList.add(4); 
  myList.addAll([5, 6, 7]);
  myList.insert(3, 100);
  myList.insertAll(5, [200, 300]);
  print(myList);

  myList[2] = -3;
  bool found = myList.contains(300);
  print(found);

  print(myList.remove(1000));
  print(myList.removeAt(0));

  print(myList);
  // myList.clear();
  // print(myList);

  // for(int i=0 ; i<myList.length; i++){
  //   myList[i] *= 2;
  // }

  for(int element in myList){
    print(element * 2);
  }

  print(myList);


  // List<int> l2 = List.filled(100, 10);
  List<int> l2 = List.generate(10, (index) => index*2);
  print(l2);
  // for(int i=0; i<100; i++){
  //   l2.add(i);
  // }


}

/*
Product A
Product B
Product C

Add: Product D
Edit Product B to Product E
Delete Product C

loop through all products
1. Product A
2. Product E  
3. Product D
*/