import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service_app/Screens/enter_otp_screen.dart';
import 'package:home_service_app/constants.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginOldUserScreen extends StatelessWidget {
  const LoginOldUserScreen({Key? key}) : super(key: key);
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double factor = screenHeight / 759.2727272727273;

    final TextEditingController controller = TextEditingController();
    String initialCountry = 'US';
    PhoneNumber number = PhoneNumber(isoCode: 'US');
    String phoneNumber = "+1 9879878975";

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Form(
        key: LoginOldUserScreen.formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: factor * 100),
                Text(
                  "Welcome Back!",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 31 * factor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10 * factor),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25 * factor),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kBlue1,
                          borderRadius: BorderRadius.circular(35.0),
                          border: Border.all(color: kGrey6),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 18 * factor),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/facebook_icon1.png", height: 32),
                                  Text(
                                    "CONTINUE WITH FACEBOOK",
                                    style: GoogleFonts.inter(
                                      color: kGrey4,
                                      fontSize: 15 * factor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: factor * 5),
                                ],
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20 * factor),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25 * factor),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          border: Border.all(color: kGrey6),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 18 * factor),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/google_icon1.png", height: 32),
                                  Text(
                                    "CONTINUE WITH GOOGLE",
                                    style: GoogleFonts.inter(
                                      color: kGrey5,
                                      fontSize: 15 * factor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: factor * 5),
                                ],
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10 * factor),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "OR CONTINUE WITH PHONE NUMBER",
                      style: GoogleFonts.inter(
                        color: kGrey2,
                        fontSize: 15 * factor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: factor * 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25 * factor),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kGrey3,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10 * factor),
                          child: InternationalPhoneNumberInput(
                            // TODO: Customize more
                            hintText: "Enter Mobile Number",
                            textStyle: GoogleFonts.inter(
                              fontSize: 16 * factor,
                              fontWeight: FontWeight.w400,
                            ),
                            onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                            },
                            onInputValidated: (bool value) {
                              print(value);
                            },
                            selectorConfig: SelectorConfig(
                              selectorType: PhoneInputSelectorType.DROPDOWN,
                            ),
                            ignoreBlank: false,
                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle: TextStyle(color: Colors.black),
                            initialValue: number,
                            textFieldController: controller,
                            formatInput: false,
                            keyboardType:
                                TextInputType.numberWithOptions(signed: true, decimal: true),
                            inputBorder: InputBorder.none,
                            onSaved: (PhoneNumber number) {
                              print('On Saved: $number');
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: factor * 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: factor * 25),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: kBlack1,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(35.0),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size.zero,
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(factor * 20),
                                  child: Center(
                                    child: Text(
                                      "LOG IN",
                                      style: GoogleFonts.inter(
                                        color: kGrey4,
                                        fontSize: factor * 19,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context, _createRoute(phoneNumber: phoneNumber));
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: factor * 20),
                    Padding(
                      padding: EdgeInsets.all(5 * factor),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 16 * factor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: factor * 5),
                Padding(
                  padding: EdgeInsets.all(5 * factor),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DON'T HAVE AN ACCOUNT? ",
                          style: GoogleFonts.inter(
                            color: kGrey2,
                            fontSize: 15 * factor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "SIGN UP",
                          style: GoogleFonts.inter(
                            color: kBlue3,
                            fontSize: 15 * factor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: factor * 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Route _createRoute({String phoneNumber = "+1 9879878975"}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        EnterOTPScreen(phoneNumber: phoneNumber),
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;

      const curve = Curves.easeOut;
      var tween = Tween(begin: begin, end: end);
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );

      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}
