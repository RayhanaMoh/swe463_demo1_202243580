// ================ Checkpoint 1 ================
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Text('May name is Rayhanah, but I prefer being called Rayhan -without H-')
//     ),
//   );
// }

// ================ Checkpoint 2 ================
// import 'package:flutter/material.dart';
// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center (
//           child: Text ('Welcome to SWE463', style: TextStyle(fontSize: 24),)
//         ),
//       ),
//     ),
//   );
// }

// ================ Checkpoint 3 ================
// import 'package:flutter/material.dart';
// void main () {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('SWE 463 - Demo 1'),
//           backgroundColor: Colors.indigo,
//           foregroundColor: Colors.white,
//         ),
//         drawer: const Drawer (
//           child: SafeArea(
//             child: Column(
//               children: [DrawerHeader(
//                 child: Center(
//                   child: Text('Demo Menu',
//                   style: TextStyle(fontSize: 24),
//                   ),
//                 ),
//               ),
//               ],
//             )
//           ),
//         ),
//       body: const Center(
//         child: Text(
//           'Open the drawer from menu icon',
//           style: TextStyle(fontSize: 20),
//         ),
//         ),
//       ),
//     ),
//   );
// }

// ================ Checkpoint 4 ================
// import 'package:flutter/material.dart';
// void main (){
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('SWE 463 - Demo 1'),
//           ),
//           drawer: const Drawer(
//             child: SafeArea(
//               child: ListTile(
//                 leading: Icon(Icons.home),
//                 title: Text('Home'),
//               ),
//             ),
//           ),
//           body: const Center(
//             child: Text(
//               'Hot reload is working!',
//               style: TextStyle(fontSize: 24),
// ),
// ),
// ),
// );
// }
// }

// ================ Checkpoint 5 ================
// import 'package:flutter/material.dart';
// void main (){
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});

// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: 'SWE 463 - Demo 1',
//     home: const HomePage(),
//   );
// }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//     appBar: AppBar(
//       title: const Text('Home Page')
//     ),
//     body: const Center(
//       child: Text('This is the Home Page', style: TextStyle(fontSize: 24),
//       ),
//     ),
//    );
//   }
// }

// class LoginPage extends StatelessWidget{
//   const LoginPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login Page'),
//       ),
//       body: const Center(
//         child: Text('This is the Login Page', style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

// ================ Checkpoint 6 ================

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SWE 463 - Demo 1',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),

      drawer: Drawer(
        child: SafeArea(
          child: ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),

      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Login'),

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),

      body: Center(
        child: ElevatedButton(
          child: const Text('Back to Home'),

          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}