import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample_project_1/Model/EmployeeModel.dart';
import 'package:sample_project_1/Screens/employeeDrawer.dart';

class UpdateEmployee extends StatefulWidget {
  final EmployeeModel employee;

  UpdateEmployee({required this.employee});

  @override
  State<StatefulWidget> createState() => UpdateEmployeeState(employee);
}

class UpdateEmployeeState extends State<UpdateEmployee> {
  final TextEditingController idController;
  final TextEditingController firstController;
  final TextEditingController lastController;

  UpdateEmployeeState(EmployeeModel employee)
      : idController = TextEditingController(text: employee.id?.toString() ?? ''),
        firstController = TextEditingController(text: employee.firstName),
        lastController = TextEditingController(text: employee.lastName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Employee'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmployeeDrawer()),
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildTextField('Employee ID', 'Enter Employee ID', idController),
            SizedBox(height: 16.0),
            _buildTextField('First Name', 'Enter Your First Name', firstController),
            SizedBox(height: 16.0),
            _buildTextField('Last Name', 'Enter Your Last Name', lastController),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Update Details'),
              onPressed: () async {
                await updateEmployees(
                  EmployeeModel(
                    id: int.tryParse(idController.text),
                    firstName: firstController.text,
                    lastName: lastController.text,
                  ),
                  context,
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, String hintText, TextEditingController controller) {
    return TextFormField(
      style: TextStyle(color: Colors.black),
      controller: controller,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Please enter $labelText';
        }
      },
      keyboardType: labelText == 'Employee ID' ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}

Future<void> updateEmployees(EmployeeModel employee, BuildContext context) async {
  var response = await http.put(
    Uri.parse('http://localhost:8084/updateemployee'),
    headers: <String, String>{"Content-Type": "application/json"},
    body: jsonEncode(employee),
  );

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext dialogContext) {
      return MyAlertDialog(
        title: response.statusCode == 200 ? 'Backend Response' : 'Error',
        content: response.statusCode == 200 ? response.body : 'Failed to update employee details.',
      );
    },
  );
}

class MyAlertDialog extends StatelessWidget {
  final String title;
  final String content;

  MyAlertDialog({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
      content: Text(
        content,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('OK', style: TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
