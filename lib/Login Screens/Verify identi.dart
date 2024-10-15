// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Dark mode.dart';
import 'Upload photo.dart';
import '../config/common.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  ColorNotifire notifier = ColorNotifire();
  @override

  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifire>(context, listen: true);
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: notifier.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 20,left: 10,right: 10),
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
                      child: Icon(Icons.close,color:notifier.textColor,size: 25,)),
                ),
              ],
            ),
             AppConstants.Height(60),
            Center(
              child: Container(
                height: height/3.6,
                // width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/verify.png"),
                  ),
                ),
              ),
            ),
            AppConstants.Height(10),
            Text(
              "Verify Your Identity",
              style: TextStyle(fontSize: 24, fontFamily: "Manrope-Bold",color: notifier.textColor),
            ),
            AppConstants.Height(10),
            const Text(
              "To help protect you from fraud and \n identity theft, and to comly with federal\n regulations, wee need some info.",
              style: TextStyle(fontSize: 14, color: Colors.grey,fontFamily: "Manrope-Regular"),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Upload(),));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 12,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xffFE9900),),
              child: const Center(child: Text("Continue",style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: "Manrope-Bold"))),
              ),
            ),
            // CommonButton(
            //   tap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Upload(),));},
            //   color: Color(0xffFE9900),
            //   text: "Continue",
            //   textcolor: Colors.white, fontsize: 17,
            // ),
          ],
        ),
      ),
    );
  }
}
