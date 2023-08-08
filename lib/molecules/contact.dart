
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 72),
      width: 570,
      height: 600,
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
          const SizedBox( width: 408, height: 61,
            child: Text(
              "THÔNG TIN LIÊN HỆ",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox( height: 52),
          const SizedBox( width: 228, height: 41,
            child: Text(
              "Adsota Agency",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 24,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          const SizedBox( height: 3),
          const SizedBox( width: 408, height: 174,
            child: Text(
              "Appota Building, số 16 ngõ 71 Láng Hạ, quận Ba Đình, Hà Nội\n\n0382 802 038\n\nadsotamkt@appota.com",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          const SizedBox( height: 65),
          SizedBox( width: 500, height: 34,
            child: Row(
              children: [
                const Text(
                  "Theo dõi chúng tôi tại",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox( width: 10),
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

