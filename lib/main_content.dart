import 'package:flutter/material.dart';
import 'atoms/button.dart';
import 'molecules/register_form.dart';

class MainContent extends StatelessWidget {
  final _formKey = GlobalKey();

  MainContent({super.key});
  // static const TextStyle menuTextStyle = TextStyle(
  //   fontSize: 14,
  //   fontWeight: FontWeight.w500,
  //   color: Color(0xff696969),
  // );


  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        _buildContainer(context),
      ),
    );
  }

  List<Widget> _buildContainer(BuildContext context) {
    List<Widget> children = [];
    children.add(_buildTitle());
    children.add(_buildIntro());
    children.add(_buildTeacher());
    children.add(_buildCourse());
    children.add(_buildOrientation());
    children.add(_buildAfterCourse());
    children.add(_buildRegister(context));
    return children;
  }

  Widget _buildTitle() {
    return Container(
      width: 1440,
      height: 656,
      color: const Color(0xFF0353CC),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 663,
            height: 600,
            child: Column(
              children: [
                Container(
                  width: 663,
                  height: 225,
                  margin: const EdgeInsets.only(left: 110, top: 40),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: 663,
                        height: 75,
                        child: Text(
                          "LEARN",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 663,
                        height: 75,
                        child: Text(
                          "UNLEARN",
                          style: TextStyle(
                            color: Color(0xFFFACB28),
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 663,
                        height: 75,
                        child: Text(
                          "RELEARN",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 663,
                  height: 150,
                  margin: const EdgeInsets.only(left: 110, top: 50),
                  child: const Text(
                    "Trong thế giới liên tục đối thay, học tập - đổi mới tư duy là cách bền vững nhất để con người và doanh nghiệp phát triển.",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 24,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: () => _scrollToPosition(_formKey.currentContext!),
                //     child: const Text(
                //       'Massive',
                //       style: menuTextStyle,
                //     ),
                //   ),
                Container(
                  width: 314,
                  height: 71,
                  margin: const EdgeInsets.only(top: 50, right: 120),
                  child: Button(
                    width: 314,
                    height: 71,
                    label: "Đăng ký ngay",
                    bgColor: "0xFFFACB28",
                    labelColor: "0xFF0353CC",
                    labelSize: 24,
                    radius: 51,
                    iconPath: "assets/images/arrow.svg",
                    iconHeight: 30,
                    iconWidth: 16,
                    spaces: 30,
                    onPressed: () => _scrollToPosition(_formKey.currentContext!),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 200,),
          Container(
            width: 527,
            height: 511,
            margin: const EdgeInsets.only(top: 58),
            child: Image.asset(
              "assets/images/asian-girl.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIntro()  {
    return Container(
      width: 1440,
      height: 384,
      color: const Color(0xFFFFFFFF),
      child:  const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Text.rich(
              TextSpan(
                text: "Giới thiệu về ",
                style: TextStyle(
                  color: Color(0xFF121825),
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Adsota Academy",
                    style: TextStyle(
                      color: Color(0xFF0353CC),
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 35),
          SizedBox(height: 136, width: 722,
            child: Text(
              "Adsota Academy là học viện đào tạo Marketing với mục tiêu giúp các doanh nghiệp tiếp cận marketing với tư duy là nền tảng về truyền thông, thương hiệu và tiếp thị số. Từ đó, có thể ứng dụng triển khai các chiến lược nhằm tối ưu kết quả kinh doanh và giúp thương hiệu cất cánh.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF121825),
                fontSize: 20,
                fontWeight: FontWeight.w100,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeacher()  {
    return Container(
      width: 1440,
      height: 807,
      color: const Color(0xFFFFFFFF),
      child:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: Text.rich(
              TextSpan(
                text: "Đội ngũ giảng viên",
                style: TextStyle(
                  color: Color(0xFF121825),
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 352,
                height: 490,
                child: Image.asset(
                  "assets/images/thao-anh.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 61),
              SizedBox(
                width: 352,
                height: 490,
                child: Image.asset(
                  "assets/images/phu-vinh.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 61),
              SizedBox(
                width: 352,
                height: 490,
                child: Image.asset(
                  "assets/images/the-long.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // text below image: name
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 352,
                height: 30,
                child: Text(
                  "Chị Hoàng Thảo Anh",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0353CC),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 61),
              SizedBox(
                width: 352,
                height: 30,
                child: Text(
                  "Anh Đặng Phú Vinh",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0353CC),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 61),
              SizedBox(
                width: 352,
                height: 30,
                child: Text(
                  "Anh Lương Thế Long",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0353CC),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          // text below image: role
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 352,
                height: 30,
                child: Text(
                  "CMO Adsota",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF121825),
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              SizedBox(width: 61),
              SizedBox(
                width: 352,
                height: 30,
                child: Text(
                  "CMO Adsota",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF121825),
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              SizedBox(width: 61),
              SizedBox(
                width: 352,
                height: 30,
                child: Text(
                  "Digital Marketing Manager Adsota",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF121825),
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCourse()  {
    return Container(
      width: 1440,
      height: 755,
      color: const Color(0xFF0353CC),
      child:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 72),
            child: Text.rich(
              TextSpan(
                text: "Các khóa học tại Adsota Academy",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 74),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 380,
                height: 468,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/brand-marketing.png",
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 32.21),
                    const Text(
                    "Branding Marketing",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF121825),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Khóa học cung cấp tư duy cơ bản về việc xây dựng và quản trị thương hiệu cho doanh nghiệp, sản phẩm.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Button(
                      width: 180,
                      height: 33,
                      label: "Chi Tiết Khóa Học",
                      bgColor: "0xFF0353CC",
                      labelColor: "0xFFFFFFFF",
                      labelSize: 14,
                      radius: 51,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 220),
              Container(
                width: 380,
                height: 468,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/digital-marketing.png",
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 32.21),
                    const Text(
                    "Digital Marketing",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF121825),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Khóa học cung cấp kiến thức cơ bản về bản chất của các kênh digital và phương pháp triển khai chiến lược quảng cáo trên nền tảng số.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Button(
                      width: 180,
                      height: 33,
                      label: "Chi Tiết Khóa Học",
                      bgColor: "0xFF0353CC",
                      labelColor: "0xFFFFFFFF",
                      labelSize: 14,
                      radius: 51,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOrientation() {
    return Container(
      width: 1440,
      height: 654,
      color: const Color(0xFFE4EFFF),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 176),
              SizedBox(
                width: 488,
                height: 124,
                child: Text(
                  "Khóa học dành cho ai?",
                  style: TextStyle(
                    color: Color(0xFF0353CC),
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(width: 523,height: 175,
                child: Padding(
                  padding: EdgeInsets.only(top: 33),
                  child: Text.rich(
                    TextSpan(
                      text: "Các cán bộ quản lý, nhân viên trong doanh nghiệp có",
                      style: TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "mong muốn cải thiện tư duy marketing",
                          style: TextStyle(
                            color: Color(0xFF121825),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " và cập nhật các phương pháp xây dựng, ",
                          style: TextStyle(
                            color: Color(0xFF121825),
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        TextSpan(
                          text: "quản trị thương hiệu (branding) và tiếp thị số (digital marketing)",
                          style: TextStyle(
                            color: Color(0xFF121825),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " và thực thi chiến lược.",
                          style: TextStyle(
                            color: Color(0xFF121825),
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 505, height: 595,
            child: Image.asset(
              "assets/images/smiling-boy.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAfterCourse() {
    return Container(
      width: 1440,
      height: 1076,
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.only(top: 154),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 280,
            height: 412,
            decoration: BoxDecoration(
              color: const Color(0xFFFACB28),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                const SizedBox(height: 42),
                  const Text(
                  "Tư duy nền tảng",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF121825),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Image.asset(
                    "assets/images/idea.png",
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 56),
                  const Text(
                    "Thấu hiểu bức tranh tổng quan về Marketing, trau dồi tư duy Marketing bằng phương pháp tiếp cận logic và thực tế.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF121825),
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
              const SizedBox(height: 116),
              const SizedBox(width: 530, height: 108,
                child: Text(
                "Học viên nhận được gì sau khóa học?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF121825),
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  height: 1,
                  ),
                ),
              ),
              const SizedBox(height: 115),
              Container(
                width: 280,
                height: 412,
                decoration: BoxDecoration(
                  color: const Color(0xFFFACB28),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 42),
                    const Text(
                    "Phát triển sự nghiệp",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF121825),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Image.asset(
                      "assets/images/develop.png",
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 56),
                    const Text(
                      "Học viên được phát triển kỹ năng, kiến thức, có thể đóng góp và tạo ra đột phá cho doanh nghiệp.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF121825),
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 280,
            height: 412,
            decoration: BoxDecoration(
              color: const Color(0xFFFACB28),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                const SizedBox(height: 42),
                const Text(
                "Áp dụng thực hiện vào doanh nghiệp",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF121825),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                Image.asset(
                  "assets/images/apply.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 56),
                const Text(
                  "Kiến thức, kỹ năng được học có thể áp dụng ngay vào các chiến lược, nhiệm vụ đang triển khai tại doanh nghiệp.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF121825),
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegister(BuildContext context) {
    return Container(
      width: 1440,
      height: 780,
      color: const Color(0xFFF8FBFF),
      child: Center(
        child: Container(
          width: 1180,
          height: 600,
          decoration: BoxDecoration(
            color: const Color(0xFFE0EDFF),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox( width: 80, height: 6),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const SizedBox(
                    width: 416,
                    height: 61,
                    child: Text(
                      "ĐĂNG KÝ NHẬN TƯ VẤN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0353CC),
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 530,
                    height: 500,
                    child:  RegistrationForm(
                      key: _formKey,
                      ),
                    ),
                ],
              ),
              // Add more widgets to the Row if needed
              Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _scrollToPosition(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
  }
}
