import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample_project_1/Model/EmployeeModel.dart';
import 'package:sample_project_1/Screens/getEmployees.dart';

class DeleteEmployee extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return deleteEmployeeState();
  }
}

Future<EmployeeModel> deleteEmployees(String firstName, String lastName) async {
  var Url = "http://localhost:8084/deleteemployee";
  var response = await http.delete(
    Url as Uri,
    headers: <String, String>{
      "Content-Type": "application/json;charset=UTF-8,"
    },
  );
  return EmployeeModel.fromJson(jsonDecode(response.body));
}

class deleteEmployeeState extends State<DeleteEmployee> {
  @override
  Widget build(BuildContext context) {
    return GetEmployees();
  }
}
