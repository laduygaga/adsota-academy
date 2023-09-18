
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../atoms/social_media_button.dart';



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
                "Appota Building, số 16 ngõ 71 Láng Hạ,\nquận Ba Đình, Hà Nội\n",
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 20 * scale,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(height: 19 * scale),
            Padding(
              padding: EdgeInsets.only(left: 80 * scale),
              child: InkWell(
                // onTap: () {
                //   _makePhoneCall('0382802038');
                // },
                child: SelectableText(
                  "0382 802 038",
                  style: TextStyle(
                      fontSize: 20 * scale,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                    ),
              ),
            ),
            SizedBox(height: 19 * scale),
            Padding(
              padding: EdgeInsets.only(left: 80 * scale),
              child: InkWell(
                onTap: () {
                  launchUrl(Uri.parse('mailto:adsotamkt@appota.com'));
                },
                child: Text(
                  "Email: adsotamkt@appota.com",
                  style: TextStyle(
                      fontSize: 20 * scale,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 65 * scale),
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
                  const SizedBox( width: 8),
                  const SocialMediaButton(
                      icon: 'assets/images/web-icon.png', link: 'https://ota.network/'),
                  const SizedBox( width: 8),
                  const SocialMediaButton(
                      icon: 'assets/images/fb-icon.png', link: 'https://www.facebook.com/adsota/'),
                  const SizedBox( width: 8),
                  const SocialMediaButton(
                      icon: 'assets/images/linkedin-icon.png', link: 'https://vn.linkedin.com/company/adsota'),
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
                "Appota Building, số 16 ngõ 71 Láng Hạ,\nquận Ba Đình, Hà Nội",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: 	InkWell(
                onTap: () {_makePhoneCall('0382802038');},
               //  onPressed: () async {
               //  await _makePhoneCall('0382802038');
               //  },
                child: const Text(
                  '0382 802 038',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  ),
              ),
            ),
            const SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              // child: SelectableLinkify(
              //   onOpen: (link) {
              //     launchUrl(Uri.parse('mailto:adsotamkt@appota.com'));
              //   },
              //   text: "Email: adsotamkt@appota.com",
              //   style: const TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.normal,
              //       color: Colors.white),
              // ),
            child: InkWell(
                  child: const Text(
                  "Email: adsotamkt@appota.com",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                onTap: () {
                  final Uri url = Uri.parse('mailto:adsotamkt@appota.com');
                  launchUrl(url);
                },
              ),
            ),
            const SizedBox(height: 65),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  Text(
                    "Theo dõi chúng tôi tại",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                SizedBox( width: 8),
                SocialMediaButton(
                    icon: 'assets/images/web-icon.png', link: 'https://ota.network/'),
                SizedBox( width: 8),
                SocialMediaButton(
                    icon: 'assets/images/fb-icon.png', link: 'https://www.facebook.com/adsota/'),
                SizedBox( width: 8),
                SocialMediaButton(
                    icon: 'assets/images/linkedin-icon.png', link: 'https://vn.linkedin.com/company/adsota'),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
  /// Future<void> _makePhoneCall(String phoneNumber) async {
  void _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

}
