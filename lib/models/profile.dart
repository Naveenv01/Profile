import 'dart:convert';

class Profile {

  String name;
  String email;
  String contactNumber;
  String country;
  String city;

  Profile({
     this.name = '',
     this.email = '',
     this.contactNumber = '',
     this.country = '',
     this.city = '',
  });



  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'name': name});
    result.addAll({'email': email});
    result.addAll({'contactNumber': contactNumber});
    result.addAll({'country': country});
    result.addAll({'city': city});
  
    return result;
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      contactNumber: map['contactNumber'] ?? '',
      country: map['country'] ?? '',
      city: map['city'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) => Profile.fromMap(json.decode(source));
}
