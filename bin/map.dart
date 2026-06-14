void main(){
  // ['ahmed', 20, 'A', '2001-05']
 Map<String, dynamic> studentData = 
  {
    'name': 'ahmed',
    'age': 20,
    'grade': 'A',
    'date': '2001-05',
    'skills': [
      'flutter', 
      'dart',
       'java'
       ],
    'address': {
      'city': 'cairo',
      'street': 'nasr city',
      'building': 10
    }
  };

  print(studentData);

  studentData.addAll({
    'email': 'ahmed@example.com',
    'phone': '1234567890'
  });

  print(studentData);

  studentData['my_phone'] = '01004383942';
  print(studentData);

  studentData.remove('addreSS');
  print(studentData);

  print('-------------------');
  print(studentData.length);
  // for(int i =0; i< studentData.length; i++){
  //   print("${studentData[i]}");
  // }

  // alternate way to loop through map
  for(var entry in studentData.entries){
    print('Key: ${entry.key} - value: ${entry.value}');
  }
}


/*
Product Data

- name Product A
- price 100
- brand Apple
- quantity 10

add category: Electronics to product data
update price to 200
remove quantity from product data

name: Product A
price: 200
brand: Apple
category: Electronics

*/