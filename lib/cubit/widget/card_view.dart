import 'package:flutter/cupertino.dart';

class CardView extends StatelessWidget {
  String id;
  String name;
  String image;
  int numberOfBloggers;

  CardView(
      {required this.id,
      required this.name,
      required this.image,
      required this.numberOfBloggers});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.0,
      margin: const EdgeInsets.only(left: 20.0, right: 21.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFF0F0FF),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(32.0),
        color: const Color(0xFFFFFFFF),
        // gradient: const LinearGradient(
        //   colors: [Color(0xFFFFFFFF), Color(0xFFF3F3FF)],
        // ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 141.0,
            height: 56.0,
            child: Stack(
              children: [
                Positioned(
                  left: 0.0,
                  top: 0.0,
                  child: Text(
                    '$name',
                    style: const TextStyle(
                      fontFamily: 'Roboto-Bold.ttf',
                      fontSize: 24.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF394759),
                    ),
                  ),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  child: Text(
                    numberOfBloggers.toString(),
                    style: const TextStyle(
                      fontFamily: 'Roboto-Regular.ttf',
                      fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF394759),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 87.0,
            height: 56.0,
            child: Image.network('$image'),
          ),
        ],
      ),
    );
  }
}
