import 'package:flutter/material.dart';
class SheetPage1 extends StatelessWidget {
  const SheetPage1({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Global recipe delights",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 42,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Embark on a culinary journey and savor the flavors of the world",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
