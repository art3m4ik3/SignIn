import 'package:flutter/material.dart';

void main() {
  runApp(const SignInApp());
}

class SignInApp extends StatelessWidget {
  const SignInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In',
      theme: ThemeData(
        primaryColor: Colors.teal,
        colorScheme: const ColorScheme.light(
            primary: Colors.teal, secondary: Colors.tealAccent),
        primarySwatch: Colors.teal,
      ),
      home: const SignInScreen(),
    );
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 3),
            const Text(
              'Sign in with Email',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Input your brainy account!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                color: Colors.grey,
              ),
            ),
            const Spacer(flex: 2),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: const TextStyle(fontSize: 19, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(fontSize: 19, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const Spacer(flex: 6),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text('Sign In Now',
                  style: TextStyle(fontSize: 22, color: Colors.white)),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(child: Divider(color: Colors.black)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("or",
                      style: TextStyle(fontSize: 19, color: Colors.black)),
                ),
                Expanded(child: Divider(color: Colors.black)),
              ],
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Image.network(
                  "https://img.icons8.com/?size=100&id=30840&format=png&color=000000",
                  height: 24),
              label: const Text('Sign in with Apple',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Image.network(
                'https://img.icons8.com/?size=100&id=17949&format=png&color=000000',
                height: 24,
              ),
              label: const Text('Sign in with Google',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const Text('Forgot Password?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text('New to the brainy academy? Sign up here',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
