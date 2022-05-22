import 'package:flutter/material.dart';
import 'package:repairhome/signin.dart';

import 'utitlities.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const Spacer(),
                  Image.asset('assets/r1.PNG'),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Create new account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.grey),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20, top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.grey),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                            controller: cpasswordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Confirm password',
                              hintStyle: TextStyle(color: Colors.grey),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: FlatBtn(
                          label: 'Sign up',
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignIn()));
                          },
                          fontWeight: FontWeight.w600,
                          labelColor: Colors.white,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Text(
                        '• Or sign up with -',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.facebook_rounded,
                                size: 40,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.facebook_rounded,
                                size: 40,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.facebook_rounded,
                                size: 40,
                              ),
                            ),
                          ])
                    ],
                  ),
                  const Spacer(),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Text(
                  //       "• Don't have an account? ",
                  //       style: TextStyle(color: Colors.grey),
                  //     ),
                  //     InkWell(
                  //       onTap: () {},
                  //       child: const Text('Sign up', style: TextStyle(color: Colors.blueAccent)),
                  //     ),
                  //   ],
                  // ),
                  // const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
