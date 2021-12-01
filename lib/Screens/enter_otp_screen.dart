import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service_app/Screens/add_new_address_screen.dart';
import 'package:home_service_app/constants.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class EnterOTPScreen extends StatelessWidget {
  final String phoneNumber;

  const EnterOTPScreen({Key? key, required this.phoneNumber}) : super(key: key);
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double factor = screenHeight / 759.2727272727273;
    double widthFactor = screenWidth / 392.72727272727275;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: factor * 10),
                Image(
                  height: 200 * factor,
                  fit: BoxFit.contain,
                  image: const AssetImage('assets/otp_image.png'),
                ),
                // SizedBox(height: 10 * factor),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "OTP Verification",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 32 * factor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 25 * factor),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Enter the OTP sent to ",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 16 * factor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          phoneNumber,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 16 * factor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OTPTextField(
                      length: 4,
                      width: 320 * widthFactor,
                      fieldWidth: 55 * widthFactor,
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 32 * factor,
                        fontWeight: FontWeight.w600,
                      ),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                      },
                    ),
                    SizedBox(height: factor * 25),
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
                              "OTP not received?  ",
                              style: GoogleFonts.inter(
                                color: kGrey2,
                                fontSize: 16 * factor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "RESEND OTP",
                              style: GoogleFonts.inter(
                                color: kBlue3,
                                fontSize: 16 * factor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: factor * 25),
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
                                      "VERIFY & PROCEED",
                                      style: GoogleFonts.inter(
                                        color: kGrey4,
                                        fontSize: factor * 19,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                  Navigator.pushReplacement(context, _createRoute());
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // SizedBox(height: factor * 5),
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
    pageBuilder: (context, animation, secondaryAnimation) => const AddNewAddressScreen(),
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
