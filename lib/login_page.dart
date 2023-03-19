import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String tag = 'login-page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    // Login page Hero Image 
    final logo = Hero(
      tag: 'Hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    // Login page email input field
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'alucar@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );

    // Login page password input field
    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );

    // Login page login button
    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/home');
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Colors.lightBlueAccent,
          padding: const EdgeInsets.all(12),
        ),
        child: const Text(
          "Log In",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

    // Login page forgot password button
    final forgotLabel = TextButton(
      child: const Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          children: [
            logo,
            const SizedBox(height: 48.0),
            email,
            const SizedBox(height: 8.0),
            password,
            const SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}
