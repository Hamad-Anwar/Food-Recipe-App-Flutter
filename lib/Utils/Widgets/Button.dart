import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final double progress;
  const MyButton({super.key,required this.progress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            const Color.fromARGB(255, 61, 225, 15),
            const Color.fromARGB(255, 61, 225, 15),
            const Color.fromARGB(255, 61, 225, 15),
            const Color.fromARGB(255, 61, 225, 15),
            const Color.fromARGB(255, 61, 225, 15).withOpacity(.3),
          ],
        ),
        color: Colors.amber
      ),
      child:
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 92 + progress * 32,
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: [
                      Opacity(
                        opacity: 1 - progress,
                        child: const Text("Get Started"),
                      ),
                      Opacity(
                        opacity: progress,
                        child: const Text(
                          "Create account",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  size: 24,
                  color: Colors.white,
                )
              ],
            ),
          ),

    );
  }
}
