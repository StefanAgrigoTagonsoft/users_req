import 'package:users_json/dto/user_dto.dart';

class User {
  late int id;
  late String firstName;
  late String lastName;
  late String maidenName;
  late int age;
  late String gender;
  late String email;
  late String phone;
  late String username;
  late String password;
  late String birthDate;
  late String image;
  late String bloodGroup;
  late double height;
  late double weight;
  late String eyeColor;
  late Map<String, String> hair;
  late String domain;
  late String ip;
  late Map<String, dynamic> address;
  late String macAddress;
  late String university;
  late Map<String, dynamic> bank;
  late Map<String, dynamic> company;
  late String ein;
  late String ssn;
  late String userAgent;
  late Map<String, dynamic> crypto;

  User.DTO({required UserDTO userDTO}) {
    id = userDTO.id;
    firstName = userDTO.firstName;
    lastName = userDTO.lastName;
    maidenName = userDTO.maidenName;
    age = userDTO.age;
    gender = userDTO.gender;
    email = userDTO.email;
    phone = userDTO.phone;
    username = userDTO.username;
    password = userDTO.password;
    birthDate = userDTO.birthDate;
    image = userDTO.image;
    bloodGroup = userDTO.bloodGroup;
    height = userDTO.height;
    weight = userDTO.weight;
    eyeColor = userDTO.eyeColor;
    hair = userDTO.hair;
    domain = userDTO.domain;
    ip = userDTO.ip;
    address = userDTO.address;
    macAddress = userDTO.macAddress;
    university = userDTO.university;
    bank = userDTO.bank;
    company = userDTO.company;
    ein = userDTO.ein;
    ssn = userDTO.ssn;
    userAgent = userDTO.userAgent;
    crypto = userDTO.crypto;
  }
}
