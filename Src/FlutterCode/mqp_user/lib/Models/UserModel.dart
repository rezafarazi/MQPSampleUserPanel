class UserModel
{

  int id;
  String name;
  String family;
  String username;
  String email;
  String date;
  String phone;
  String token;

  UserModel({
    required this.id,
    required this.name,
    required this.family,
    required this.username,
    required this.email,
    required this.date,
    required this.phone,
    required this.token,
  });

  factory UserModel.FromJson(Map<String,dynamic> json)
  {
    return UserModel(
      id: json["id"],
      name: json["name"],
      family: json["family"],
      username: json["username"],
      phone: json["phone"],
      email: json["email"],
      date: json["date"],
      token:json["token"] 
    );
  }

}