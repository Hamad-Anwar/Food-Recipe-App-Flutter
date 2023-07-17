import 'package:flutter/material.dart';
class ViewPages extends StatelessWidget {
  final String image,title,about;
  const ViewPages({super.key, required this.image, required this.title, required this.about});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(image,
                height: 300,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 30,),
            ],
          ),
          Text(title, style: const TextStyle(
              color: Colors.grey,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),
          Text(about, textAlign: TextAlign.center, style: const TextStyle(
              color: Color.fromRGBO(137, 137, 137, 1),
              fontSize: 20,
              fontWeight: FontWeight.w400
          ),),


        ],
      ),
    );
  }
}

