import 'package:crowwn/config/successScreen.dart';
import 'package:flutter/material.dart';

class ProcessingScreen extends StatefulWidget {

  final String message;

  ProcessingScreen({ required this.message});
  @override
  State<ProcessingScreen> createState() => _ProcessingScreenState();
}

class _ProcessingScreenState extends State<ProcessingScreen> {
  @override
  Widget build(BuildContext context) {
    // Simulating a delay to mimic processing
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ConversionResultScreen(success: true, message: widget.message,)),
      );
    });

    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Color(0xffFE9900),
            ),
            SizedBox(height: 20),
            Text('Processing your conversion, please wait...'),
          ],
        ),
      ),
    );
  }
}
