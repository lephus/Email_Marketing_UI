class EmailMarketing{
  String username;
  String password;
  EmailMarketing({this.username, this.password});
  EmailMarketing.fromJson(Map<String , dynamic> json){
    username = json['username'];
    password = json['password'];
  }
  Map<String , dynamic> toJson(){
    final Map<String , dynamic> data = new Map<String , dynamic>();
    data['username'] = username;
    data['password'] = password;
    return data;
  }
  @override
  String toString() {
    return 'EmailMarketing {userName: ${username} , password: ${password}';
  }
}