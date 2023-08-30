
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final double? maxWidth;
  const Contact({Key? key, this.maxWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (maxWidth != null && maxWidth! > 800) {
      double scale = maxWidth! / 1440;
      if (maxWidth! > 1440) {
        scale = 1;
      }
      return Container(
        width: 540 * scale,
        height: 600 * scale,
        decoration: const BoxDecoration(
          color: Color(0xFF0353CC),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 80 * scale),
              child: Text(
                "THÔNG TIN LIÊN HỆ\n",
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 36 * scale,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80 * scale),
              child: Text(
                "Adsota Agency",
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 24 * scale,
                  fontWeight: FontWeight.w800,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80 * scale),
              child: Text(
                "Appota Building, số 16 ngõ 71 Láng Hạ,\nquận Ba Đình, Hà Nội\n0382 802 038\n\nadsotamkt@appota.com\n",
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 20 * scale,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80 * scale),
              child: Row(
                children: [
                  Text(
                    "Theo dõi chúng tôi tại",
                    style: TextStyle(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 20 * scale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox( width: 10 * scale),
                  Image.asset(
                    "assets/images/contact.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: Color(0xFF0353CC),
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "THÔNG TIN LIÊN HỆ\n",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Adsota Agency",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Appota Building, số 16 ngõ 71 Láng Hạ,\nquận Ba Đình, Hà Nội\n0382 802 038\n\nadsotamkt@appota.com\n",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  const Text(
                    "Theo dõi chúng tôi tại",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox( width: 8),
                  Image.asset(
                    "assets/images/contact.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}

