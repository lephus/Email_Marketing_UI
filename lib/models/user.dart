class User{
  String username;
  String password;
  String email;
  String address;
  String firshName;
  String lastName;
  User({this.username, this.password, this.email});
  User.fromJson(Map<String , dynamic> json){
    username = json['USERNAME'];
    password = json['PASSWORD'];
    email    = json['EMAIL'];
    address  = json['ADDRESS'];
    firshName= json['FIRSHNAME'];
    lastName = json['LASTNAME'];
  }
  Map<String , dynamic> toJson(){
    final Map<String , dynamic> data = new Map<String , dynamic>();
    data['USERNAME'] = username;
    data['PASSWORD'] = password;
    data['EAMIL']    = email;
    data['ADDRESS']  = address;
    data['FIRSHNAME']= firshName;
    data['LASTNAME'] = lastName;
    return data;
  }

  @override
  String toString() {
    return 'User{username: $username, password: $password, email: $email, address: $address, firshName: $firshName, lastName: $lastName}';
  }
}