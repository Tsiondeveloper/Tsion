import 'package:crowwn/Dark%20mode.dart';
import 'package:crowwn/Home/bottom.dart';
import 'package:crowwn/config/common.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConversionResultScreen extends StatefulWidget {
  final bool success;
  final String message;

  ConversionResultScreen({required this.success, required this.message});

  @override
  State<ConversionResultScreen> createState() => _ConversionResultScreenState();
}

class _ConversionResultScreenState extends State<ConversionResultScreen> {
    ColorNotifire notifier = ColorNotifire();
  @override
  Widget build(BuildContext context) {
       notifier = Provider.of<ColorNotifire>(context, listen: true);
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: notifier.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 20, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: notifier.textColor,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            AppConstants.Height(90),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: widget.success ? AssetImage("assets/images/Succesfully.png") : AssetImage("assets/images/cancel.png"),
                    scale: 3,
                  ),
                ),
              ),
            ),
            AppConstants.Height(20),
            Text(
              widget.message,
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Manrope-SemiBold",
                color: notifier.textFieldHintText,
              ),
            ),
            AppConstants.Height(10),
         
            const Spacer(),
            AppConstants.Height(20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomBarScreen(),
                    ));
              },
              child: Container(
                height: height/13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFE9900),
                ),
                child: const Center(
                  child: Text(
                    "Done",
                    style: TextStyle(color: Colors.white, fontSize: 17,fontFamily: "Manrope-Bold"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




