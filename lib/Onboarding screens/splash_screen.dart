import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:crowwn/config/common.dart';

import '../Dark mode.dart';
import 'onboarding_1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    init();
    super.initState();
  }

  init() {
    Future.delayed(
      const Duration(seconds: 9),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Onboard1(),
            ));
      },
    );
  }

  ColorNotifire notifier = ColorNotifire();

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifire>(context, listen: true);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: notifier.background,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage(
                  "assets/images/WorldStreet-logo-animation-black.gif",
                ),
                color: notifier.isDark ? Colors.white : null,
                height: height / 4,
              ),
              // AppConstants.Width(width/19),
              // Text("WorldStreet",style: TextStyle(color: notifier.textColor,fontSize: 30,fontFamily: "Manrope-Bold"),)
            ],
          )
        ],
          ),
      bottomNavigationBar: BottomAppBar(
         color: notifier.background,
        elevation: 0,
        height: 65,
        child:  Center(
          child: Column(
            children: [
              Text("All in One Trading Platform",style: TextStyle(fontSize: 15,fontFamily: "Manrope-Bold",color: notifier.textColor,wordSpacing: 5),),
              const Text(
                "Version 0.0.1",
                style: TextStyle(
                    color: Color(0xffD1D1D1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Manrope_semibold",
                    letterSpacing: 0.3),
              ),
            ],
          )
        ),
      ),
    );
  }
}
