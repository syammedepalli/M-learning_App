import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'homepage.dart';
import 'teamfolderpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
        home: App()),
      );
}

class App extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          print('Something went wrong');
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return HomeWidget();
        }
        // Otherwise, show something whilst waiting for initialization to complete
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: TeamFolderPage(),
    );
  }
}
