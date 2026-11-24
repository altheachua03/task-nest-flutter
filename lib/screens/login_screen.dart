import 'package:flutter/material.dart';

import 'welcome_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const Color darkBrown = Color(0xFF393333);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/task-nest-icon.png',
                    width: 145,
                    height: 145,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'TaskNest',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: darkBrown, width: 0.7),
                    left: BorderSide(color: darkBrown, width: 0.4),
                    right: BorderSide(color: darkBrown, width: 0.4),
                  ),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(55)),
                ),

                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 20,
                  ),

                  child: Column(
                    children: [
                      // Heading
                      const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 17),

                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: const TextStyle(fontSize: 11),
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            size: 20,
                            color: Colors.black,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                        ),
                      ),

                      const SizedBox(height: 9),

                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(fontSize: 11),
                          prefixIcon: const Icon(
                            Icons.key_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                        ),
                      ),

                      const SizedBox(height: 13),

                      SizedBox(
                        width: double.infinity,
                        height: 38,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WelcomeScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: darkBrown,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Text(
                            'Log in',
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                      ),

                      const SizedBox(height: 9),

                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Expanded(child: Divider(color: Colors.black54)),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text('or', style: TextStyle(fontSize: 11)),
                          ),
                          Expanded(child: Divider(color: Colors.black54)),
                        ],
                      ),

                      const SizedBox(height: 13),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 42,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  side: const BorderSide(color: Colors.grey),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                                child: const Text(
                                  'Create an Account',
                                  style: TextStyle(fontSize: 10),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 5),

                          Expanded(
                            child: SizedBox(
                              height: 42,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  side: const BorderSide(color: Colors.grey),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'G',
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF4285F4),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Google',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
