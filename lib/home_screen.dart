import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final auth = AuthService();
  User? user;

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.blue,
      appBar: AppBar( backgroundColor: Colors.blueAccent,
        title: Text(
          user != null
              ? user!.displayName ?? "User"
              : "Google Sign In",
        ),
        actions: [
          IconButton(
            onPressed: () {
              auth.signOut();
              setState(() {
                user = null;
              });
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login With Google Account',
            style: TextStyle(
              color: Colors.black,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () async {
              var user = await auth.signInWithGoogle();
              setState(() {
              user = user;
              });
            },
            child: Image.network(
              "https://img.favpng.com/15/12/25/google-logo-google-adwords-g-suite-google-account-png-favpng-ZPDpvjf5PW8XaAnw6V9PQkcut.jpg",
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
