import 'dart:ui';

import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(-1, -1),
          child: Container(
            width: 200,
            height: 300,
            color: Colors.pink[200],
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(1, -1),
          child: Container(
            width: 200,
            height: 300,
            color: Colors.indigo[300],
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0, -.2),
          child: Container(
            width: 300,
            height: 100,
            color: Colors.orange,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(
            decoration: const BoxDecoration(color: Colors.transparent),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),

              const Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Good to see you back !",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(child: Container()),
              // sign in sign out buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 16),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 16),
                    ),
                  ),
                ],
              ),
              // user input
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(left: 12, right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[300],
                ),
                child: TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: "Email",
                      icon: Icon(Icons.email),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(left: 12, right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[300],
                ),
                child: TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: "Password",
                      icon: Icon(Icons.lock),
                      border: InputBorder.none),
                ),
              ),
              // forgot password button
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    minimumSize: const Size(200, 40),
                    backgroundColor: Colors.purple[200]),
                onPressed: () {},
                child: const Text(
                  "Sign In",
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        )
      ],
    );
  }
}
