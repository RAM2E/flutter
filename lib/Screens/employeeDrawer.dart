
import 'package:flutter/material.dart';
import 'package:sample_project_1/Model/EmployeeModel.dart';
import 'package:sample_project_1/Screens/deleteEmployee.dart';
import 'package:sample_project_1/Screens/getEmployees.dart';
import 'package:sample_project_1/Screens/registerEmployee.dart';
import 'package:sample_project_1/Screens/updateEmployees.dart';

// class EmployeeDrawer extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return EmployeeDrawerState();
//   }
// }

// class EmployeeDrawerState extends State<EmployeeDrawer> {
//   final minimumPadding = 5.0;

//   final List<Color> gradientColors = [
//     Colors.blue,  // Start color
//     Colors.green, // End color
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Employee Management'),
//         backgroundColor: Colors.blue, // Set your primary color
//       ),
//      body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: gradientColors,
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Text(
//             'Welcome To Sayukth',
//             style: TextStyle(
//               fontSize: 24,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.only(top: minimumPadding, bottom: minimumPadding),
//           children: <Widget>[
//             DrawerHeader(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Employee Management',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Manage your employee records',
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue, // Same as app bar color
//               ),
//             ),
//             ListTile(
//               title: Text('Register Employee'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => RegisterEmployee()),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text('Get Employees'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => GetEmployees()),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text('Update Employees'),
//               onTap: () {
//                 EmployeeModel yourEmployeeInstance = EmployeeModel();
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => UpdateEmployee(employee: yourEmployeeInstance),
//                   ),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text('Remove Employees'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => DeleteEmployee()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:sample_project_1/Model/EmployeeModel.dart';
// import 'package:sample_project_1/Screens/deleteEmployee.dart';
// import 'package:sample_project_1/Screens/getEmployees.dart';
// import 'package:sample_project_1/Screens/registerEmployee.dart';
// import 'package:sample_project_1/Screens/updateEmployees.dart';

// class EmployeeDrawer extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return EmployeeDrawerState();
//   }
// }

// class EmployeeDrawerState extends State<EmployeeDrawer> {
//   final minimumPadding = 5.0;

//   final List<Color> gradientColors = [
//     Colors.blue,  // Start color
//     Colors.green, // End color
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Employee Management'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: gradientColors,
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Add an image or logo for a better visual appearance
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
//                 child: Image.asset(
//                   'assets/images/sayukthlogo.jpeg',  // Replace with your image path
//                   height: 100,
//                   width: 100,
//                 ),
//               ),
//               SizedBox(height: 20),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Text(
//                   'Welcome To Sayukth Technologies',
//                   style: TextStyle(
//                     fontSize: 24,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.only(top: minimumPadding, bottom: minimumPadding),
//           children: <Widget>[
//             DrawerHeader(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Employee Management',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Manage your employee records',
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               title: Text('Register Employee'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => RegisterEmployee()),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text('Get Employees'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => GetEmployees()),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text('Update Employees'),
//               onTap: () {
//                 EmployeeModel yourEmployeeInstance = EmployeeModel();
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => UpdateEmployee(employee: yourEmployeeInstance),
//                   ),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text('Remove Employees'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => DeleteEmployee()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// class EmployeeDrawer extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return EmployeeDrawerState();
//   }
// }

// class EmployeeDrawerState extends State<EmployeeDrawer> {
//   final minimumPadding = 5.0;

//   final List<Color> gradientColors = [
//     Colors.blue,  // Start color
//     Colors.green, // End color
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Employee Management'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: gradientColors,
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Add an image or logo for a better visual appearance
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
//                 child: Image.asset(
//                   'assets/images/sayukthlogo.jpeg',  // Replace with your image path
//                   height: 100,
//                   width: 100,
//                 ),
//               ),
//               SizedBox(height: 20),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     Text(
//                       'Welcome To Sayukth Technologies',
//                       style: TextStyle(
//                         fontSize: 24,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.only(top: minimumPadding, bottom: minimumPadding),
//           children: <Widget>[
//             DrawerHeader(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Employee Management',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Manage your employee records',
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             buildListTileWithHoverEffect('Register Employee', RegisterEmployee()),
//             buildListTileWithHoverEffect('Get Employees', GetEmployees()),
//             buildListTileWithHoverEffect('Update Employees', UpdateEmployee(employee: EmployeeModel())),
//             buildListTileWithHoverEffect('Remove Employees', DeleteEmployee()),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildListTileWithHoverEffect(String title, Widget destination) {
//     return ListTile(
//       title: Text(title),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => destination),
//         );
//       },
//       hoverColor: const Color.fromARGB(255, 118, 173, 218).withOpacity(0.2), // Set the hover color
//       tileColor: Colors.transparent, // Set the default tile color
//       contentPadding: EdgeInsets.all(8.0), // Adjust padding as needed
//       leading: Icon(Icons.arrow_right), // Customize the leading icon
//     );
//   }
// }


// class EmployeeDrawer extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return EmployeeDrawerState();
//   }
// }

// class EmployeeDrawerState extends State<EmployeeDrawer> {
//   final minimumPadding = 5.0;

//   final List<Color> gradientColors = [
//     Colors.blue,  // Start color
//     Colors.green, // End color
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Employee Management'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: gradientColors,
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Add an image or logo for a better visual appearance
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
//                 child: Image.asset(
//                   'assets/images/sayukthlogo.jpeg',  // Replace with your image path
//                   height: 100,
//                   width: 100,
//                 ),
//               ),
//               SizedBox(height: 20),
//               TweenAnimationBuilder<double>(
//                 tween: Tween(begin: -300.0, end: 5),
//                 duration: Duration(seconds: 2),
//                 builder: (context, value, child) {
//                   return Transform.translate(
//                     offset: Offset(value, 0),
//                     child: child,
//                   );
//                 },
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Text(
//                         'Welcome To Sayukth Technologies',
//                         style: TextStyle(
//                           fontSize: 24,
//                           color: const Color.fromARGB(213, 255, 255, 255),
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.only(top: minimumPadding, bottom: minimumPadding),
//           children: <Widget>[
//             DrawerHeader(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Employee Management',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Manage your employee records',
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             buildListTileWithHoverEffect('Register Employee', RegisterEmployee()),
//             buildListTileWithHoverEffect('Get Employees', GetEmployees()),
//             buildListTileWithHoverEffect('Update Employees', UpdateEmployee(employee: EmployeeModel())),
//             buildListTileWithHoverEffect('Remove Employees', DeleteEmployee()),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildListTileWithHoverEffect(String title, Widget destination) {
//     return ListTile(
//       title: Text(title),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => destination),
//         );
//       },
//       hoverColor: const Color.fromARGB(255, 118, 173, 218).withOpacity(0.2), // Set the hover color
//       tileColor: Colors.transparent, // Set the default tile color
//       contentPadding: EdgeInsets.all(8.0), // Adjust padding as needed
//       // leading: Icon(Icons.arrow_right), // Customize the leading icon
//     );
//   }
// }

// class EmployeeDrawer extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return EmployeeDrawerState();
//   }
// }

// class EmployeeDrawerState extends State<EmployeeDrawer> {
//   final minimumPadding = 5.0;

//   final List<Color> gradientColors = [
//     Colors.blue,  // Start color
//     Colors.green, // End color
//   ];

//   final Map<String, IconData> drawerIcons = {
//     'Register Employee': Icons.person_add,
//     'Get Employees': Icons.people,
//     'Update Employees': Icons.edit,
//     'Remove Employees': Icons.delete,
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Employee Management'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: gradientColors,
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Add an image or logo for a better visual appearance
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
//                 child: Image.asset(
//                   'assets/images/sayukthlogo.jpeg',  // Replace with your image path
//                   height: 100,
//                   width: 100,
//                 ),
//               ),
//               SizedBox(height: 20),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     Text(
//                       'Welcome To Sayukth Technologies',
//                       style: TextStyle(
//                         fontSize: 24,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.only(top: minimumPadding, bottom: minimumPadding),
//           children: <Widget>[
//             DrawerHeader(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Employee Management',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Manage your employee records',
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ...drawerIcons.entries.map((entry) => buildListTileWithHoverEffect(entry.key, entry.value, destination(entry.key))),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildListTileWithHoverEffect(String title, IconData icon, Widget destination) {
//     return ListTile(
//       title: Row(
//         children: [
//           Icon(icon),
//           SizedBox(width: 8),
//           Text(title),
//         ],
//       ),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => destination),
//         );
//       },
//       hoverColor: const Color.fromARGB(255, 118, 173, 218).withOpacity(0.2), // Set the hover color
//       tileColor: Colors.transparent, // Set the default tile color
//       contentPadding: EdgeInsets.all(8.0), // Adjust padding as needed
//     );
//   }

//   Widget destination(String title) {
//     switch (title) {
//       case 'Register Employee':
//         return RegisterEmployee();
//       case 'Get Employees':
//         return GetEmployees();
//       case 'Update Employees':
//         return UpdateEmployee(employee: EmployeeModel());
//       case 'Remove Employees':
//         return DeleteEmployee();
//       default:
//         return SizedBox.shrink();
//     }
//   }
// }


// import 'package:flutter/material.dart';

// class EmployeeDrawer extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return EmployeeDrawerState();
//   }
// }

// class EmployeeDrawerState extends State<EmployeeDrawer> {
//   final minimumPadding = 5.0;

//   final List<Color> gradientColors = [
//     Colors.blue,  // Start color
//     Colors.green, // End color
//   ];

//   final Map<String, IconData> drawerIcons = {
//     'Register Employee': Icons.person_add,
//     'Get Employees': Icons.people,
//     'Update Employees': Icons.edit,
//     'Remove Employees': Icons.delete,
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Employee Management'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: gradientColors,
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Add an image or logo for a better visual appearance
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
//                 child: Image.asset(
//                   'assets/images/sayukthlogo.jpeg',  // Replace with your image path
//                   height: 100,
//                   width: 100,
//                 ),
//               ),
//               SizedBox(height: 20),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     Text(
//                       'Welcome To Sayukth Technologies',
//                       style: TextStyle(
//                         fontSize: 24,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.only(top: minimumPadding, bottom: minimumPadding),
//           children: <Widget>[
//             DrawerHeader(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Employee Management',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Manage your employee records',
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ...drawerIcons.entries.map((entry) => buildListTileWithHoverEffect(entry.key, entry.value, destination(entry.key))),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildListTileWithHoverEffect(String title, IconData icon, Widget destination) {
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 200),
//         decoration: BoxDecoration(
//           color: Colors.transparent,
//           border: Border(
//             left: BorderSide(
//               color: Colors.transparent,
//               width: 5,
//             ),
//           ),
//         ),
//         child: ListTile(
//           title: Row(
//             children: [
//               Icon(icon, color: Colors.blue),
//               SizedBox(width: 8),
//               Text(title, style: TextStyle(color: Colors.black87)),
//             ],
//           ),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => destination),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Widget destination(String title) {
//     switch (title) {
//       case 'Register Employee':
//         return RegisterEmployee();
//       case 'Get Employees':
//         return GetEmployees();
//       case 'Update Employees':
//         return UpdateEmployee(employee: EmployeeModel());
//       case 'Remove Employees':
//         return DeleteEmployee();
//       default:
//         return SizedBox.shrink();
//     }
//   }
// }

import 'package:flutter/material.dart';

class EmployeeDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EmployeeDrawerState();
  }
}

class EmployeeDrawerState extends State<EmployeeDrawer> {
  final List<Color> gradientColors = [Colors.blue, Colors.green];
  final Map<String, IconData> drawerIcons = {
    'Register Employee': Icons.person_add,
    'Get Employees': Icons.people,
    'Update Employees': Icons.edit,
    'Remove Employees': Icons.delete,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Management'),
        backgroundColor: Colors.blue,
      ),
      body: _buildBody(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/man.jpeg'),
              radius: 50,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome To Employee Management',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Employee Management',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Manage your employee records',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.green], // Change the first color stop
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          ...drawerIcons.entries.map(
            (entry) => _buildListTile(entry.key, entry.value, _destination(entry.key)),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, IconData icon, Widget destination) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon, color: Color.fromARGB(255, 146, 144, 144)),
          SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(color: Color.fromARGB(255, 14, 13, 13)),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      tileColor: Colors.transparent,
      contentPadding: EdgeInsets.all(8.0),
      hoverColor: Colors.blue.withOpacity(0.2),
    );
  }

  Widget _destination(String title) {
    switch (title) {
      case 'Register Employee':
        return RegisterEmployee();
      case 'Get Employees':
        return GetEmployees();
      case 'Update Employees':
        return UpdateEmployee(employee: EmployeeModel());
      case 'Remove Employees':
        return DeleteEmployee();
      default:
        return SizedBox.shrink();
    }
  }
}
