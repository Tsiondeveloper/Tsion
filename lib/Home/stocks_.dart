// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Dark mode.dart';

class stocks_ extends StatefulWidget {
  const stocks_({super.key});

  @override
  State<stocks_> createState() => _stocks_State();
}

class _stocks_State extends State<stocks_> {
  ColorNotifire notifier = ColorNotifire();
  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifire>(context, listen: true);

    return Scaffold(
      backgroundColor: notifier.background,
      appBar: AppBar(
        backgroundColor: notifier.background,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("assets/images/arrow-narrow-left (1).png",scale: 3,color: notifier.textColor,)),
        title: Text("Stocks",style: TextStyle(fontSize: 17,fontFamily: "Manrope-Bold", color: notifier.textColor)),
      ),

    );
  }
}
