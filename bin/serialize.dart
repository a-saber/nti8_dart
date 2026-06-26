
Map<String, dynamic> countries = {
  'countries': [
    {
      'id': 1,
      'name': 'Egypt',
      'language': 'ar',
      'cities': [
        {
          'id': 2,
          'name': 'Cairo',
          'area': 10000
        },
        {
          'id': 4,
          'name': 'Alexandria',
          'area': 5000
        }

      ]
    },
    {
      'id': 2,
      'name': 'United-States',
      'language': 'en',
      'cities': [
        {
          'id': 10,
          'name': 'London',
          'area': 2000
        }
      ]
    }
  ]
};


void main() {
  List<int> numbers = [];
  numbers.forEach((l){});
  Map<String, dynamic> usersResponse = {
    'status': true,
    'users': [
      {
        'name': 'ahmed',
        'email': 'ahmed@gmail.com',
        'age': 30,
        'isMale': true,
      },
      {
        'name': 'Mo',
        'email': 'mo@gmail.com',
        'age': 25,
        'isMale': true
      },
    ]
  };
  GetUsersResponse getUsersResponse =
      GetUsersResponse.fromJson(usersResponse);
  print(getUsersResponse.users?.first.name);
  print(getUsersResponse.users?.length);
  // print(userMap['name']);
  // User u1 = User.fromJson(userMap);
  // print(u1.name); // 'ahmed'
}

class GetUsersResponse {
  bool? status;
  List<User>? users;
  GetUsersResponse({this.status, this.users});

  GetUsersResponse.fromJson(Map<String, dynamic> json){
    status = json['status'];
    if(json['users'] != null) {
      users = [];
      json['users'].forEach(
              (userMap) {
            User u = User.fromJson(userMap);
            users!.add(u);
          });
    }
  }

}

class User {
  String? name;
  String? email;
  int? age;
  bool? isMale;

  User({this.name, this.email, this.age, this.isMale});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    age = json['age'];
    isMale = json['isMale'];
  }
}
