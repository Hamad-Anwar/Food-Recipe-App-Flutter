import 'package:flutter/material.dart';

import 'Button.dart';
import 'SheetPage1.dart';
import 'SignUpForm.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});
  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}
class _MyBottomSheetState extends State<MyBottomSheet> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController()
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double position = _pageController.hasClients ? (_pageController.page ?? 0) : 0;
    return ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
      child: SizedBox(
        height: 400 + position * 140,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                const SizedBox(height: 16),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: const [
                      SheetPage1(),
                      SignUpForm(),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              height: 56,
              bottom: 32 + position * 140,
              right: 16,
              child: GestureDetector(
                onTap: () {
                  if (_pageController.page == 0) {
                    _pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.ease);
                  }
                },
                child: MyButton(progress: position)
              ),
            )
          ],
        ),
      ),
    );
  }
}
