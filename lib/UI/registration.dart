import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) { return Scaffold( body: SafeArea(
    child: Column( crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Padding( padding: EdgeInsets.all(16.0), child: Text( 'BOOK-RECOMMENDER', textAlign: TextAlign.center, style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green,
      ),
      ), ), const Padding( padding: EdgeInsets.all(16.0), child: Text( 'Registration Form', textAlign: TextAlign.center, style: TextStyle( fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,
      ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'First Name',
        ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Last Name',
        ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Email ID',
        ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Faculty',
        ),
      ), ), const SizedBox(height: 12.0), const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Password',
        ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Confirm Password',
        ),
      ), ), const SizedBox(height: 12.0),
      Padding( padding: const EdgeInsets.symmetric(horizontal: 16.0), child: ElevatedButton(
        onPressed: () {}, style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlueAccent,
      ), child: const Text( 'REGISTER', style: TextStyle(
        color: Colors.white,
      ),
      ),
      ),
      ),
    ],
    ),
  ),
  );
  }
}