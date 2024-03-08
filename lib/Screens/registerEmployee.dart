// import 'dart:convert';


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:sample_project_1/Model/EmployeeModel.dart';

// class RegisterEmployee extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return registerEmployeeState();
//   }
// }

// Future<EmployeeModel?> registerEmployees(
//     String firstName, String lastName, BuildContext context) async {
//   var url = "http://localhost:8084/addemployee";
//   var response = await http.post(Uri.parse(url),
//       headers: <String, String>{"Content-Type": "application/json"},
//       body: jsonEncode(<String, String>{
//         "firstName": firstName,
//         "lastName": lastName,
//       }));

//   String responseString = response.body;
  
//   if (response.statusCode == 200) {
//     print("data saved successfully");
//     showDialog(
//       context: context,
//       barrierDismissible: true,
//       builder: (BuildContext dialogContext) {
//         return MyAlertDialog(title: 'Backend Response', content: response.body);
//       },
//     );
//   }
// }



// class registerEmployeeState extends State<RegisterEmployee> {
//   final minimumPadding = 5.0;

//   TextEditingController firstController = TextEditingController();
//   TextEditingController lastController = TextEditingController();

//   EmployeeModel? employee;

//   @override
//   Widget build(BuildContext context) {
//     TextStyle? textStyle = Theme.of(context).textTheme.titleSmall;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Register Employee"),
//       ),
//       body: Form(
//         child: Padding(
//           padding: EdgeInsets.all(minimumPadding * 2),
//           child: ListView(
//             children: <Widget>[
//               Padding(
//                   padding: EdgeInsets.only(
//                       top: minimumPadding, bottom: minimumPadding),
//                   child: TextFormField(
//                     style: textStyle,
//                     controller: firstController,
//                     validator: (String? value) {
//                       if (value!.isEmpty) {
//                         return 'please enter your name';
//                       }
//                     },
//                     decoration: InputDecoration(
//                         labelText: 'First Name',
//                         hintText: 'Enter Your First Name',
//                         labelStyle: textStyle,
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(5.0))),
//                   )),
//               Padding(
//                   padding: EdgeInsets.only(
//                       top: minimumPadding, bottom: minimumPadding),
//                   child: TextFormField(
//                     style: textStyle,
//                     controller: lastController,
//                     validator: (String? value) {
//                       if (value!.isEmpty) {
//                         return 'please enter your name';
//                       }
//                     },
//                     decoration: InputDecoration(
//                         labelText: 'Last Name',
//                         hintText: 'Enter Your First Name',
//                         labelStyle: textStyle,
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(5.0))),
//                   )),
//                 ElevatedButton(
//                  onPressed: () async {
//                 String firstName = firstController.text;
//                  String lastName = lastController.text;
//                  EmployeeModel? employees = await registerEmployees(firstName, lastName, context);
//                  firstController.text = '';
//                 lastController.text = '';
//                setState(() {
//                 employee = employees;
//                });
//                },
//               child: Text('Submit'),
//                 )

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyAlertDialog extends StatelessWidget {
//   final String title;
//   final String content;
//   final List<Widget> actions;

//   MyAlertDialog({
//     required this.title,
//     required this.content,
//     this.actions = const [],
//   });

//   @override
//   Widget build(BuildContext context) {
//   return AlertDialog(
//     title: Text(
//       this.title,
//       style: Theme.of(context).textTheme.titleLarge,
//     ),
//     actions: this.actions,
//     content: Text(
//       this.content,
//       style: Theme.of(context).textTheme.bodyMedium,
//     ),
//   );
// }

// }


// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:sample_project_1/Model/EmployeeModel.dart';

// class RegisterEmployee extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _RegisterEmployeeState();
// }

// class _RegisterEmployeeState extends State<RegisterEmployee> {
//   final minimumPadding = 5.0;
//   TextEditingController firstController = TextEditingController();
//   TextEditingController lastController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Register Employee"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(minimumPadding * 2),
//         child: ListView(
//           children: <Widget>[
//             _buildTextField('First Name', 'Enter Your First Name', firstController),
//             _buildTextField('Last Name', 'Enter Your Last Name', lastController),
//             ElevatedButton(
//               onPressed: () => _submitForm(context),
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String labelText, String hintText, TextEditingController controller) {
//     return Padding(
//       padding: EdgeInsets.only(top: minimumPadding, bottom: minimumPadding),
//       child: TextFormField(
//         style: Theme.of(context).textTheme.titleSmall,
//         controller: controller,
//         validator: (String? value) {
//           if (value!.isEmpty) {
//             return 'Please enter your name';
//           }
//         },
//         decoration: InputDecoration(
//           labelText: labelText,
//           hintText: hintText,
//           labelStyle: Theme.of(context).textTheme.titleSmall,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(5.0),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _submitForm(BuildContext context) async {
//     String firstName = firstController.text;
//     String lastName = lastController.text;
//     EmployeeModel? employees = await registerEmployees(firstName, lastName, context);
//     firstController.text = '';
//     lastController.text = '';
//     setState(() {
//       // Do something with employee if needed
//     });
//   }
// }

// Future<EmployeeModel?> registerEmployees(String firstName, String lastName, BuildContext context) async {
//   var url = "http://localhost:8084/addemployee";
//   var response = await http.post(
//     Uri.parse(url),
//     headers: <String, String>{"Content-Type": "application/json"},
//     body: jsonEncode(<String, String>{"firstName": firstName, "lastName": lastName}),
//   );

//   if (response.statusCode == 200) {
//     print("Data saved successfully");
//     _showAlertDialog(context, 'Backend Response', response.body);
//   }

//   // Return the employee model if needed
//   return null;
// }

// void _showAlertDialog(BuildContext context, String title, String content) {
//   showDialog(
//     context: context,
//     barrierDismissible: true,
//     builder: (BuildContext dialogContext) {
//       return AlertDialog(
//         title: Text(
//           title,
//           style: Theme.of(context).textTheme.titleLarge,
//         ),
//         content: Text(
//           content,
//           style: Theme.of(context).textTheme.bodyMedium,
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(dialogContext),
//             child: Text('OK'),
//           ),
//         ],
//       );
//     },
//   );
// }


// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:sample_project_1/Model/EmployeeModel.dart';

// class RegisterEmployee extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _RegisterEmployeeState();
// }

// class _RegisterEmployeeState extends State<RegisterEmployee> {
//   final TextEditingController firstController = TextEditingController();
//   final TextEditingController lastController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     var deviceSize = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Register Employee"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10.0),
//                 border: Border.all(color: const Color.fromARGB(255, 197, 186, 186), width: 2.0),
//               ),
//               child: Column(
//                 children: [
//                   _buildTextField('First Name', 'Enter Your First Name', firstController),
//                   SizedBox(height: 16.0),
//                   _buildTextField('Last Name', 'Enter Your Last Name', lastController),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () => _submitForm(context),
//               child: Text('SAVE', style: TextStyle(color: Colors.black)),
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white, backgroundColor: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String labelText, String hintText, TextEditingController controller) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 8.0),
//       child: TextFormField(
//         style: TextStyle(color: Colors.black),
//         controller: controller,
//         validator: (String? value) {
//           if (value!.isEmpty) {
//             return 'Please enter your name';
//           }
//         },
//         decoration: InputDecoration(
//           labelText: labelText,
//           hintText: hintText,
//           labelStyle: TextStyle(color: Colors.black),
//           border: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.black, width: 2.0),
//             borderRadius: BorderRadius.circular(5.0),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.black, width: 2.0),
//             borderRadius: BorderRadius.circular(5.0),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _submitForm(BuildContext context) async {
//     String firstName = firstController.text;
//     String lastName = lastController.text;

//     try {
//       await registerEmployees(firstName, lastName, context);
//       _showAlertDialog(context, 'Success', 'Data saved successfully');
//       firstController.clear();
//       lastController.clear();
//     } catch (error) {
//       _showAlertDialog(context, 'Error', 'Failed to save data. Please try again.');
//     }
//   }     
// }

// Future<void> registerEmployees(String firstName, String lastName, BuildContext context) async {
//   var url = "http://localhost:8084/addemployee";
  
//   var response = await http.post(
//     Uri.parse(url),
//     headers: <String, String>{"Content-Type": "application/json"},
//     body: jsonEncode(<String, String>{"firstName": firstName, "lastName": lastName}),
//   );

//   if (response.statusCode != 200) {
//     throw Exception('Failed to save data. Status code: ${response.statusCode}');
//   }
// }

// void _showAlertDialog(BuildContext context, String title, String content) {
//   showDialog(
//     context: context,
//     barrierDismissible: true,
//     builder: (BuildContext dialogContext) {
//       return AlertDialog(
//         title: Text(
//           title,
//           style: Theme.of(context).textTheme.titleLarge,
//         ),
//         content: Text(
//           content,
//           style: Theme.of(context).textTheme.bodyMedium,
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(dialogContext),
//             child: Text('OK'),
//           ),
//         ],
//       );
//     },
//   );
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterEmployee extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterEmployeeState();
}

class _RegisterEmployeeState extends State<RegisterEmployee> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController lastController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Employee"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildTextField('First Name', 'Enter Your First Name', firstController),
                  SizedBox(height: 16.0),
                  _buildTextField('Last Name', 'Enter Your Last Name', lastController),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _submitForm(context),
              child: Text('SAVE', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, String hintText, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        controller: controller,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Please enter your name';
          }
        },
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(color: Colors.black),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }

  Future<void> _submitForm(BuildContext context) async {
    String firstName = firstController.text;
    String lastName = lastController.text;

    if (firstName.isEmpty || lastName.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill out all fields.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (!_isAlphabetic(firstName) || !_isAlphabetic(lastName)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('First name and last name should only contain alphabets.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    

    try {
      await registerEmployees(firstName, lastName, context);
      _showAlertDialog(context, 'Success', 'Data saved successfully');
      firstController.clear();
      lastController.clear();
    } catch (error) {
      _showAlertDialog(context, 'Error', 'Failed to save data. Please try again.');
    }
  }

  bool _isAlphabetic(String value) {
    final alphabeticRegex = RegExp(r'^[a-zA-Z]+$');
    return alphabeticRegex.hasMatch(value);
  }

  

  Future<void> registerEmployees(String firstName, String lastName, BuildContext context) async {
    var url = "http://localhost:8084/addemployee";

    var response = await http.post(
      Uri.parse(url),
      headers: <String, String>{"Content-Type": "application/json"},
      body: jsonEncode(<String, String>{"firstName": firstName, "lastName": lastName}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to save data. Status code: ${response.statusCode}');
    }
  }

  void _showAlertDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          content: Text(
            content,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
