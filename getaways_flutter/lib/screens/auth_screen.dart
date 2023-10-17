import 'package:flutter/material.dart';
import 'package:getaways_flutter/widgets/auth/custom_textfield.dart';

enum Auth { login, register }

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/images/sunset_unsplash.jpg"),
                fit: BoxFit.cover,
                opacity: 0.2),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 75, 40, 8),
            child: Column(
              children: [
                const FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text("MINDFUL GETAWAYS",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 42,
                        color: Colors.white,
                      )),
                ),
                // ListTile for Logging In
                ListTile(
                  title: const Text(
                    "Create Account",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Radio(
                      value: Auth.register,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      }),
                ),
                // // ListTile for Signing Up
                ListTile(
                  title: const Text("Existing Users",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: Radio(
                      value: Auth.login,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
