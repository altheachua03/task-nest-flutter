import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const Color darkBrown = Color(0xFF393333);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 3),

              const Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: -1,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                'Juan!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 45),

              ClipOval(
                child: Image.asset(
                  'assets/images/juan-icon.jpg',
                  width: 190,
                  height: 190,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 190,
                      height: 190,
                      color: Colors.grey.shade200,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.image_not_supported_outlined,
                        size: 45,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 35),

              SizedBox(
                width: 165,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: darkBrown,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Continue', style: TextStyle(fontSize: 14)),
                      Icon(Icons.arrow_forward, size: 21),
                    ],
                  ),
                ),
              ),

              const Spacer(flex: 5),
            ],
          ),
        ),
      ),
    );
  }
}
