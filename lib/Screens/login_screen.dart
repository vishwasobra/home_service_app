import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service_app/Screens/login_old_users_screen.dart';
import 'package:home_service_app/constants.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double factor = screenHeight / 759.2727272727273;

    final TextEditingController controller = TextEditingController();
    String initialCountry = 'US';
    PhoneNumber number = PhoneNumber(isoCode: 'US');

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: screenHeight,
            child: Column(
              children: [
                Flexible(
                  flex: 5,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10 * factor,
                        width: screenWidth,
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/login_screen_background_1.png'),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        width: screenWidth,
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/login_screen_background_2.png'),
                        ),
                      ),
                      Positioned(
                        bottom: 80 * factor,
                        width: screenWidth,
                        child: Padding(
                          padding: EdgeInsets.all(30 * factor),
                          child: Image(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/login_screen_image.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Home services Expert",
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: factor * 23,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: factor * 10),
                      Text(
                        "Continue with Phone Number",
                        style: GoogleFonts.inter(
                          color: kGrey2,
                          fontSize: factor * 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: factor * 25),
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
                      SizedBox(height: factor * 10),
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
                                        "SIGN UP",
                                        style: GoogleFonts.inter(
                                          color: kGrey4,
                                          fontSize: factor * 19,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(factor * 5),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            "VIEW OTHER OPTION",
                            style: GoogleFonts.inter(
                              color: kBlue2,
                              fontSize: factor * 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: factor * 5),
                      Padding(
                        padding: EdgeInsets.all(factor * 5),
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
                                "ALREADY HAVE AN ACCOUNT? ",
                                style: GoogleFonts.inter(
                                  color: kGrey2,
                                  fontSize: factor * 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "LOG IN",
                                style: GoogleFonts.inter(
                                  color: kBlue3,
                                  fontSize: factor * 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context, _createRoute());
                          },
                        ),
                      ),
                      SizedBox(height: factor * 5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const LoginOldUserScreen(),
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
