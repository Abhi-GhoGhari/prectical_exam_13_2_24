import 'package:flutter/material.dart';

class DetialPage extends StatefulWidget {
  const DetialPage({super.key});

  @override
  State<DetialPage> createState() => _DetialPageState();
}

class _DetialPageState extends State<DetialPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff607274),
        centerTitle: true,
        title: Text(
          "DetialPage",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color(0xffDED0B6),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Color(0xffB2A59B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
