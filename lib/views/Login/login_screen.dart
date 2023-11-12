import 'package:festa/core/colors.dart';
import 'package:festa/provider/Login/login_provider.dart';
import 'package:festa/views/common%20widgets/custom_textformfield.dart';
import 'package:festa/views/common%20widgets/responsive_widget.dart';
import 'package:festa/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final loginProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
      backgroundColor: kGreenColor,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: SizedBox(
              width: screenWidth,
              height: screenHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: constraints.maxWidth < 768
                        ? .75 * screenWidth
                        : .35 * screenWidth,
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(height: .03 * screenHeight),
                        const Text(
                          'Log In',
                          style: TextStyle(
                              color: kGreenColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: .04 * screenHeight,
                          width: constraints.maxWidth < 768
                              ? .6 * screenWidth
                              : .25 * screenWidth,
                          child: TextFormField(
                            controller: loginProvider.emailController,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: -8.0),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: kGreenColor,
                                size: 15,
                              ),
                              // suffixIcon: Icon(Icons.remove_red_eye),
                              hintText: 'email',
                              hintStyle: const TextStyle(
                                color: kGreenColor,
                                fontSize: 12, 
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                  color: kGreyColor,
                                  // width: 2.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                  color: kGreyColor,
                                  // width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          height: .04 * screenHeight,
                          width: constraints.maxWidth < 768
                              ? .6 * screenWidth
                              : .25 * screenWidth,
                          child: Consumer<LoginProvider>(
                              builder: (context, provider, child) =>
                                  TextFormField(
                                    obscureText: provider.isPasswordObscure,
                                    controller:
                                        loginProvider.passwordController,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: -8.0),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      prefixIcon: const Icon(
                                        Icons.email_outlined,
                                        color: kGreenColor,
                                        size: 15,
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () {
                                          provider
                                              .changePassowrdObscureStatus();
                                        },
                                        child: Icon(
                                          provider.isPasswordObscure
                                              ? Icons.remove_red_eye_outlined
                                              : Icons.remove_red_eye,
                                          color: kGreenColor,
                                          size: 8,
                                        ),
                                      ),
                                      hintText: 'password',
                                      hintStyle: const TextStyle(
                                        color: kGreenColor,
                                        fontSize: 12,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                          color: kGreyColor,
                                          // width: 2.0,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                          color: kGreyColor,
                                          // width: 2.0,
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                          },
                          child: Container(
                            height: .05 * screenHeight,
                            width: constraints.maxWidth < 768
                                ? .45 * screenWidth
                                : .15 * screenWidth,
                            decoration: BoxDecoration(
                              color: kGreenColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'LOG IN',
                                style: TextStyle(
                                  color: kWhiteColor.withOpacity(0.6),
                                  fontSize: 12, 
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: .05 * screenHeight,
                            width: constraints.maxWidth < 768
                                ? .45 * screenWidth
                                : .15 * screenWidth,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: kGreyColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 2),
                                  child: FaIcon(FontAwesomeIcons.google,
                                      color: kGreenColor,
                                      size: constraints.maxWidth < 768
                                          ? constraints.maxWidth * .025
                                          : constraints.maxWidth * .01),
                                ),
                                Text(
                                  'Sign in with google',
                                  style: TextStyle(
                                    color: kGreenColor.withOpacity(.8),
                                    fontWeight: FontWeight.w700,
                                    fontSize: constraints.maxWidth < 768
                                        ? constraints.maxWidth < 768 &&
                                                constraints.maxWidth > 600
                                            ? constraints.maxWidth * .015
                                            : constraints.maxWidth * .023
                                        : constraints.maxWidth * .008,
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: .03 * screenHeight),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
