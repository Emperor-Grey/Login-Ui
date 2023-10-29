import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/common/background.dart';
import 'package:login_ui/common/textfeild.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
                      "Create Account",
                      textAlign: TextAlign.center,
                      style: const TextStyle().copyWith(
                        color: const Color(0xFF1F41BB),
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const SizedBox(
                  width: 326,
                  child: Text(
                    "Create an account so you can explore all the existing jobs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 53),
                const Padding(
                  padding: EdgeInsets.only(bottom: 26.0),
                  child: CustomTextField(
                    label: "Email",
                    hintText: "Test@gmail.com",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 26.0),
                  child: CustomTextField(
                    label: "Password",
                    hintText: "Test@123",
                  ),
                ),
                const CustomTextField(
                  label: "Confirm Password",
                  hintText: "Test@123",
                ),
                const SizedBox(height: 53),
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
                    "Sign up",
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
                    "Already have an account",
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
