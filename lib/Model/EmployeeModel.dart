// import 'dart:convert';

// EmployeeModel? employeeModelJson(String str) =>
//     EmployeeModel.fromJson(json.decode(str));

// String employeeModelToJson(EmployeeModel data) => json.encode(data.toJson());

// class EmployeeModel {
//   int id;
//   String firstName;
//   String lastName;

//   EmployeeModel({this.id, this.firstName,  this.lastName});

//   factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
//       firstName: json["firstName"], lastName: json["lastName"], id: json["id"]);

//   Map<String, dynamic> toJson() => {
//         "firstName": firstName,
//         "lastName": lastName,
//         'id': id,
//       };

//   String get firstname => firstName;

//   String get lastname => lastName;
// }


// import 'dart:convert';

// class EmployeeModel {
//   int? id;
//   String? firstName;
//   String? lastName;

//   EmployeeModel({this.id, this.firstName, this.lastName});

//   factory EmployeeModel.fromJson(Map<String, dynamic> json) {
//     return EmployeeModel(
//       id: json["id"] as int?,
//       firstName: json["firstName"] as String?,
//       lastName: json["lastName"] as String?,
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "firstName": firstName,
//         "lastName": lastName,
//       };

//   String? get firstname => firstName;

//   String? get lastname => lastName;
// }

// EmployeeModel? employeeModelJson(String str) {
//   try {
//     return EmployeeModel.fromJson(json.decode(str));
//   } catch (e) {
//     print('Error decoding EmployeeModel: $e');
//     return null;
//   }
// }

// String employeeModelToJson(EmployeeModel data) => json.encode(data.toJson());


class EmployeeModel {
  int? id;
  String? firstName;
  String? lastName;
  String? photoUrl; // Add this line for the photo URL property

  EmployeeModel({this.id, this.firstName, this.lastName, this.photoUrl});

  // Existing factory and toJson methods...

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      id: json["id"] as int,
      firstName: json["firstName"] as String,
      lastName: json["lastName"] as String,
      photoUrl: json["photoUrl"] as String?, // Adjust the property name accordingly
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "photoUrl": photoUrl, // Adjust the property name accordingly
      };

  String? get firstname => firstName;

  String? get lastname => lastName;
}
