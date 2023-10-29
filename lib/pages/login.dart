import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/common/background.dart';
import 'package:login_ui/common/textfeild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 72.0),
                  child: Center(
                    child: Text(
                      "Login here",
                      textAlign: TextAlign.center,
                      style: const TextStyle().copyWith(
                        color: const Color(0xFF1F41BB),
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                const SizedBox(
                  width: 228,
                  child: Text(
                    "Welcome back you’ve been missed!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 74),
                const Padding(
                  padding: EdgeInsets.only(bottom: 29.0),
                  child: CustomTextField(
                    label: "Email",
                    hintText: "Test@gmail.com",
                  ),
                ),
                const CustomTextField(
                  label: "Password",
                  hintText: "Test@123",
                ),
                const SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(""),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Color(0xFF1F41BB),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    minimumSize: Size(screenWidth * 0.9, 55),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Sign in",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Create new account",
                    style: TextStyle(
                      color: Color(0xFF494949),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Or continue with",
                    style: TextStyle(
                      color: Color(0xFF1F41BB),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.2,
                    right: screenWidth * 0.2,
                    bottom: screenWidth * 0.2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton.filledTonal(
                        onPressed: () {},
                        style: ButtonStyle(
                          minimumSize: const MaterialStatePropertyAll<Size>(
                            Size(60, 44),
                          ),
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        icon: SvgPicture.asset('assets/google_svg.svg'),
                      ),
                      IconButton.filledTonal(
                        onPressed: () {},
                        style: ButtonStyle(
                          minimumSize: const MaterialStatePropertyAll<Size>(
                            Size(60, 44),
                          ),
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        icon: SvgPicture.asset('assets/facebook_svg.svg'),
                      ),
                      IconButton.filledTonal(
                        onPressed: () {},
                        style: ButtonStyle(
                          minimumSize: const MaterialStatePropertyAll<Size>(
                            Size(60, 44),
                          ),
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        icon: SvgPicture.asset('assets/apple_svg.svg'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
