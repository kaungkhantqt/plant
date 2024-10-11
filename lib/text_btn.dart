import 'package:flutter/material.dart';

class TextBtn extends StatelessWidget {
  const TextBtn({super.key, required this.text, required this.underlineWidth});
  final String text;
  final double underlineWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
        top: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 80, 183, 133),
                height: 2,
                width: underlineWidth,
              ),
            ],
          ),
          SizedBox(
              width: 80,
              height: 30,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 80, 183, 133),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.all(0)),
                  onPressed: () {},
                  child: Text("More")))
        ],
      ),
    );
  }
}
