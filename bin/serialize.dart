Map<String, dynamic> countries = {
  'status': true,
  'countries': [
    {
      'id': 1,
      'name': 'Egypt',
      'language': 'ar',
      'cities': [
        {
          'id': 2,
          'name': 'Cairo',
          'land_area': 10000,
        },
        {'id': 4, 'name': 'Alexandria', 'land_area': 5000},
      ]
    },
    {
      'id': 2,
      'name': 'United-States',
      'language': 'en',
      'cities': [
        {'id': 10, 'name': 'London', 'land_area': 2000}
      ]
    }
  ]
};

void main() {
  List<int> numbers = [];
  numbers.forEach((l) {});
  Map<String, dynamic> usersResponse = {
    'status': true,
    'users': [
      {
        'name': 'ahmed',
        'email': 'ahmed@gmail.com',
        'age': 30,
        'isMale': true,
      },
      {'name': 'Mo', 'email': 'mo@gmail.com', 'age': 25, 'isMale': true},
    ]
  };
  GetUsersResponse getUsersResponse = GetUsersResponse.fromJson(usersResponse);
  print(getUsersResponse.users?.first.name);
  print(getUsersResponse.users?.length);
  // print(userMap['name']);
  // User u1 = User.fromJson(userMap);
  // print(u1.name); // 'ahmed'


  GetUsersResponse g2 = GetUsersResponse(users: [
    User(name: 'ahmed')
  ]);
}

class GetUsersResponse {
  bool? status;
  List<User>? users;

  GetUsersResponse({this.status, this.users});

  GetUsersResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['users'] != null) {
      users = [];
      json['users'].forEach((userMap) {
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

class City {
  int? id;
  String? name;
  int? landArea;

  City({this.id, this.name, this.landArea});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    landArea = json['land_area'];
  }
}

class Country {
  int? id;
  String? name;
  String? language;
  List<City>? cities;

  Country({this.name, this.id, this.language, this.cities});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    language = json['language'];
    if (json['cities'] != null) {
      cities = [];
      json['cities'].forEach((cityMap) => cities!.add(City.fromJson(cityMap)));
    }
  }
}

class CountriesResponse {
  bool? status;
  List<Country>? countries;

  CountriesResponse(this.status, this.countries);

  CountriesResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['countries'] != null) {
      countries = [];
      json['countries']
          .forEach((country) =>
          countries!.add(Country.fromJson(country)));
    }
  }
}
