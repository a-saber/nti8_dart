/*

Rest API

1. Link
https://facebook.com => BaseUrl
https://facebook.com/login => EndPoint
https://facebook.com/posts => EndPoint
https://facebook.com/posts/1 => ResourceId

2. Method
Get => Read Data
Post => Create Data
Put => Update Data
Patch => Update Partial Data
Delete => Delete Data
head
options

3. Body Data
  Map<String, dynamic> body;
  {
    "name": "ahmed",
    "email": "ahmed@example.com",
    "password": "123456",
    'image': , X
    "cart": [
      {
        "product": "product 1",
        "quantity": 2,
      }
    ]
  }

  A. Json
  map

  B. FormData
  map => formData
  'image' => file


4. Query Params => Filters
https://facebook.com/posts?date=2021-05-20&user=ahmed

Map<String, dynamic> queryParams = {
  'date': '2021-05-20',
  'user': 'ahmed'
};

5. Headers

Authentication => id user => token
Authorization

Token
1. Access Token
2. Refresh Token

Map<String, dynamic> headers = {
  "Accept-Language": "ar",
  "Authorization": accessToken
};


Auth Life Cycle

1. Login
save both tokens

2. With Any protected Request
add access token to headers

3. possible to expire access token
use Refresh token to generate new access token

4. possible to expire refresh token
logout
 */