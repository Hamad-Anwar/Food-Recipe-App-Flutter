import 'package:flutter/material.dart';
import 'InputField.dart';
class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  FlutterLogo(
                    size: 50,

                  )
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            InputField(label: 'Enter your Email', icon: Icons.email),
            SizedBox(height: 16),
            InputField(
              label: 'Enter your Password',
              icon: Icons.lock,
              hidden: true,
            ),
            SizedBox(height: 180),
            Row(
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),Text(
                  " Sign in.",
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
