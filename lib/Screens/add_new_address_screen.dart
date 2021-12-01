import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service_app/constants.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double factor = screenHeight / 759.2727272727273;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: factor * 100),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Hey, nice to meet you!",
                style: GoogleFonts.inter(
                  color: kGrey2,
                  fontSize: 18 * factor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10 * factor),
              Text(
                "See services around",
                style: GoogleFonts.raleway(
                  color: Colors.black,
                  fontSize: 32 * factor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 10 * factor),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: factor * 25),
            child: Image(
              height: 200 * factor,
              fit: BoxFit.contain,
              image: const AssetImage('assets/add_new_address_image.png'),
            ),
          ),
          SizedBox(height: 1 * factor),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25 * factor),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.my_location, size: 25, color: kGrey4),
                            SizedBox(width: factor * 10),
                            Text(
                              "Your current location",
                              style: GoogleFonts.inter(
                                color: kGrey4,
                                fontSize: 18 * factor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.search, size: 25, color: kGrey2),
                            SizedBox(width: factor * 10),
                            Text(
                              "Some other location",
                              style: GoogleFonts.inter(
                                color: kGrey2,
                                fontSize: 18 * factor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // SizedBox(width: factor * 5),
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
          SizedBox(height: 50 * factor),
        ],
      ),
    );
  }
}
