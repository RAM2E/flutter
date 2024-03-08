// import 'dart:convert';


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:sample_project_1/Model/EmployeeModel.dart';
// import 'package:sample_project_1/Screens/deleteEmployee.dart';
// import 'package:sample_project_1/Screens/employeeDrawer.dart';
// import 'package:sample_project_1/Screens/updateEmployees.dart';

// class GetEmployees extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return getAllEmployeesState();
//   }
// }

// class getAllEmployeesState extends State<GetEmployees> {
//   var employess = List<EmployeeModel?>.generate(200, (index) => null);

//   Future<List<EmployeeModel>> getEmployees() async {
//      print("get data");

//     var data = await http.get( Uri.parse('http://localhost:8084/getallemployees'));
//     var jsonData = json.decode(data.body);
   
//     List<EmployeeModel> employee = [];
//     for (var e in jsonData) {
//       EmployeeModel employees = new EmployeeModel(id:0, firstName: '', lastName: '');
//       employees.id = e["id"];
//       employees.firstName = e["firstName"];
//       employees.lastName = e["lastName"];
//       employee.add(employees);
//     }
//     return employee;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         title: new Text("All Employees Details"),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => EmployeeDrawer()));
//           },
//         ),
//       ),
//       body: Container(
//         child: FutureBuilder(
//           future: getEmployees(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.data == null) {
//               return Container(child: Center(child: Icon(Icons.error)));
//             }
//             return ListView.builder(
//                 itemCount: snapshot.data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     title: Text('ID' + '   ' + 'First Name' + '  ' + 'Last Name'),
//                     subtitle: Text('${snapshot.data[index].id}' +"   "+
//                         '${snapshot.data[index].firstName}' +"   "+
//                         '${snapshot.data[index].lastName}'),
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) =>
//                                   DetailPage(snapshot.data[index])));
//                     },
//                   );
//                 });
//           },
//         ),
//       ),
//     );
//   }
// }

// class DetailPage extends StatelessWidget {
//   EmployeeModel employee;

//   DetailPage(this.employee);

//   deleteEmployee1(EmployeeModel employee) async {
//     final url = Uri.parse('http://localhost:8084/deleteemployee');
//     final request = http.Request("DELETE", url);
//     request.headers
//         .addAll(<String, String>{"Content-type": "application/json"});
//     request.body = jsonEncode(employee);
//     final response = await request.send();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(employee.firstName!),
//         actions: <Widget>[
//           IconButton(
//               icon: Icon(
//                 Icons.edit,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => UpdateEmployee(employee: employee)));
//               })
//         ],
//       ),
//       body: Container(
//         child: Text('FirstName ${employee.firstName} LastName${employee.lastName}'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           deleteEmployee1(employee);
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => DeleteEmployee()));
//         },
//         child: Icon(Icons.delete),
//         backgroundColor: Colors.pink,
//       ),
//     );
//   }
// }


import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample_project_1/Model/EmployeeModel.dart';
import 'package:sample_project_1/Screens/deleteEmployee.dart';
import 'package:sample_project_1/Screens/employeeDrawer.dart';
import 'package:sample_project_1/Screens/updateEmployees.dart';

// class GetEmployees extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return getAllEmployeesState();
//   }
// }

// class getAllEmployeesState extends State<GetEmployees> {
//   var employess = List<EmployeeModel?>.generate(200, (index) => null);

//   Future<List<EmployeeModel>> getEmployees() async {
//      print("get data");

//     var data = await http.get( Uri.parse('http://localhost:8084/getallemployees'));
//     var jsonData = json.decode(data.body);
   
//     List<EmployeeModel> employee = [];
//     for (var e in jsonData) {
//       EmployeeModel employees = new EmployeeModel(id:0, firstName: '', lastName: '');
//       employees.id = e["id"];
//       employees.firstName = e["firstName"];
//       employees.lastName = e["lastName"];
//       employee.add(employees);
//     }
//     return employee;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         title: new Text("All Employees Details"),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => EmployeeDrawer()));
//           },
//         ),
//       ),
//       body: Container(
//         child: FutureBuilder(
//           future: getEmployees(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.data == null) {
//               return Container(child: Center(child: Icon(Icons.error)));
//             }
//             return ListView.builder(
//                 itemCount: snapshot.data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     title: Text('ID' + '   ' + 'First Name' + '  ' + 'Last Name'),
//                     subtitle: Text('${snapshot.data[index].id}' +"   "+
//                         '${snapshot.data[index].firstName}' +"   "+
//                         '${snapshot.data[index].lastName}'),
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) =>
//                                   DetailPage(snapshot.data[index])));
//                     },
//                   );
//                 });
//           },
//         ),
//       ),
//     );
//   }
// }

// class DetailPage extends StatelessWidget {
//   EmployeeModel employee;

//   DetailPage(this.employee);

//   deleteEmployee1(EmployeeModel employee) async {
//     final url = Uri.parse('http://localhost:8084/deleteemployee');
//     final request = http.Request("DELETE", url);
//     request.headers
//         .addAll(<String, String>{"Content-type": "application/json"});
//     request.body = jsonEncode(employee);
//     final response = await request.send();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(employee.firstName!),
//         actions: <Widget>[
//           IconButton(
//               icon: Icon(
//                 Icons.edit,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => UpdateEmployee(employee: employee)));
//               })
//         ],
//       ),
//       body: Container(
//         child: Text('FirstName ${employee.firstName} LastName${employee.lastName}'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           deleteEmployee1(employee);
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => DeleteEmployee()));
//         },
//         child: Icon(Icons.delete),
//         backgroundColor: Colors.pink,
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GetEmployees extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GetAllEmployeesState();
  }
}

class GetAllEmployeesState extends State<GetEmployees> {
  Future<List<EmployeeModel>> getEmployees() async {
    var data = await http.get(Uri.parse('http://localhost:8084/getallemployees'));
    var jsonData = json.decode(data.body);

    List<EmployeeModel> employees = [];
    for (var e in jsonData) {
      EmployeeModel employee = EmployeeModel(id: e["id"], firstName: e["firstName"], lastName: e["lastName"]);
      employees.add(employee);
    }
    return employees;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Employees Details"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeeDrawer()));
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: FutureBuilder(
          future: getEmployees(),
          builder: (BuildContext context, AsyncSnapshot<List<EmployeeModel>> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 5.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Text(
                      'ID: ${snapshot.data![index].id}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Name: ${snapshot.data![index].firstName} ${snapshot.data![index].lastName}',
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage(snapshot.data![index])),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}



class DetailPage extends StatelessWidget {
  final EmployeeModel employee;

  DetailPage(this.employee);

  deleteEmployee1(EmployeeModel employee) async {
    final url = Uri.parse('http://localhost:8084/deleteemployee');
    final request = http.Request("DELETE", url);
    request.headers.addAll(<String, String>{"Content-type": "application/json"});
    request.body = jsonEncode(employee);
    final response = await request.send();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double breakpointSmall = 600.0;
    double breakpointMedium = 900.0;
    Widget content;

    if (screenSize.width < breakpointSmall) {
      content = buildSmallLayout();
    } else if (screenSize.width < breakpointMedium) {
      content = buildMediumLayout();
    } else {
      content = buildLargeLayout();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(employee.firstName ?? 'Employee Details'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpdateEmployee(employee: employee)),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.5,
          color: Colors.blue,
          child: Center(child: content),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          deleteEmployee1(employee);
          Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteEmployee()));
        },
        child: Icon(Icons.delete),
        backgroundColor: Colors.pink,
      ),
    );
  }

  Widget buildSmallLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'First Name: ${employee.firstName ?? "N/A"}',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        SizedBox(height: 8.0),
        Text(
          'Last Name: ${employee.lastName ?? "N/A"}',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ],
    );
  }

  Widget buildMediumLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'First Name: ${employee.firstName ?? "N/A"}',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              'Last Name: ${employee.lastName ?? "N/A"}',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ],
        ),
        CircleAvatar(
          radius: 50.0,
          backgroundImage: NetworkImage(employee.photoUrl ?? ""),
        ),
      ],
    );
  }

  Widget buildLargeLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'First Name: ${employee.firstName ?? "N/A"}',
              style: TextStyle(fontSize: 36.0, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              'Last Name: ${employee.lastName ?? "N/A"}',
              style: TextStyle(fontSize: 36.0, color: Colors.white),
            ),
          ],
        ),
        CircleAvatar(
          radius: 100.0,
          backgroundImage: NetworkImage(employee.photoUrl ?? ""),
        ),
      ],
    );
  }
}



// Your EmployeeModel class remains the same.
