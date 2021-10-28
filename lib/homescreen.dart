import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mainscreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('mobile exchange price',
        style: GoogleFonts.notoSans(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold) ,

      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(

              child: Image.asset("assests/images/iphone.png",width: 250,)
            ),
            Center(
              child: Text(
                "Mobile Price Prediction",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),
                // style: const TextStyle(
                //
                //     fontWeight: FontWeight.bold,
                //     color: Colors.black87,
                //     fontSize: 30,
                // ),

              ),
            ),
            Center(
                child: SizedBox(
              height: 50,
              width: 150,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black87),
                ),
                onPressed: () {
                  _navigateToNextScreen(context);
                },
                child: Text(
                  "Get Started",
                  style:GoogleFonts.notoSans(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
  }
}
