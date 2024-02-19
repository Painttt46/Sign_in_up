import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/home_screen.dart';
import 'package:onboarding_screen/component/my_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullnameController = TextEditingController();
  final repasswordController = TextEditingController();
  createUserWithEmailAndPassword() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to our community'),
        centerTitle: true,
      ),
      body: Form(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          MytextField(
              controller: fullnameController,
              hintText: "Enter your name",
              obscureText: false,
              labelText: "Name"),
          const SizedBox(
            height: 20,
          ),
          MytextField(
            controller: emailController,
            labelText: "Email",
            obscureText: false,
            hintText: "Enter your email.",
          ),
          const SizedBox(
            height: 20,
          ),
          MytextField(
            controller: passwordController,
            labelText: "Password",
            obscureText: true,
            hintText: "Enter your password.",
          ),
          const SizedBox(
            height: 20,
          ),
          MytextField(
            controller: repasswordController,
            labelText: "Re-password",
            obscureText: true,
            hintText: "Enter your password again.",
          ),
          const SizedBox(
            height: 20,
          ),
          MyButton(onTap: createUserWithEmailAndPassword, hintText: "Sign up"),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Have a member?',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                width: 1,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'Sign in.',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
