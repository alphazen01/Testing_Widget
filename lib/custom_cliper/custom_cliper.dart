import 'package:flutter/material.dart';

class CustomCliper extends StatelessWidget {
  const CustomCliper({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Clipper"),
      ),
      body: ClipPath(
        clipper: DemoCliper(),
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class DemoCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(100, 0);

    path.lineTo(100, size.height);

    //
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ExpandableText extends StatefulWidget {
  const ExpandableText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = 150; // Update this value as needed

  @override
  void initState() {
    super.initState();
    if (widget.title.length > textHeight) {
      firstHalf = widget.title.substring(0, textHeight.toInt());
      secondHalf =
          widget.title.substring(textHeight.toInt() + 1, widget.title.length);
    } else {
      firstHalf = widget.title;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        secondHalf.isEmpty
            ? Text(
                firstHalf,
                style: TextStyle(fontSize: 16, color: Colors.black),
              )
            : Column(
                children: [
                  Text(
                    hiddenText ? (firstHalf + "...") : (firstHalf + secondHalf),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(
                      height: 10), // Add some space between text and button
                  ElevatedButton(
                    // or ElevatedButton
                    onPressed: () {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                    },
                    child: Text(hiddenText ? "Details" : "Show less"),
                  ),
                ],
              ),
      ],
    );
  }
}
