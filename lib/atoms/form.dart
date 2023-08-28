import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../atoms/button.dart';

class OTAForm extends StatefulWidget {
  final double maxWidth;
  const OTAForm({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  OTAFormState createState() => OTAFormState();
}

class OTAFormState extends State<OTAForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();

// pass json body to http post request as parameter
void onPressedCallback(body) async {
  final url = Uri.parse('https://script.google.com/macros/s/AKfycbxpi8Hoxy7QfD6ls92QQ7mVozhu2PIWQOR5dznCgxNrRN3_rAKrPPfXwmgn3D5RoGwL6w/exec');
  final response = await http.post(url, headers: {'Content-Type': 'application/x-www-form-urlencoded'}, body: body);

  if (response.statusCode == 200) {
    // Success handling
    // print('Form data submitted successfully');
  } else {
    // Error handling
    // print('Form data submission failed');
  }
}

  @override
  Widget build(BuildContext context) {
    double scale = widget.maxWidth / 530;
    if (widget.maxWidth > 800) {
      scale = widget.maxWidth / 1200;
    }
    if (widget.maxWidth > 1200) {
      scale = 1;
    }
    double fontSize = 20 * scale;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30 * scale),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30 * scale),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Họ và tên',
                    labelStyle: TextStyle(
                      fontSize: fontSize),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập họ và tên';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _numberController,
                  decoration: InputDecoration(
                    labelText: 'Số điện thoại',
                    labelStyle: TextStyle(
                      fontSize: fontSize),
                    ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập số điện thoại';
                    }
                    // validate valid phone number
                    if (!RegExp(r'(84|0[^0])+([0-9]{8})\b').hasMatch(value)) {
                      return 'Vui lòng nhập số điện thoại hợp lệ';
                    }

                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontSize: fontSize),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập email';
                    }
                    // validate valid email address
                    if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value)) {
                      return 'Vui lòng nhập email hợp lệ';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _companyController,
                  decoration: InputDecoration(
                    labelText: 'Đơn vị công tác',
                    labelStyle: TextStyle(
                      fontSize: fontSize),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập đơn vị công tác';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _roleController,
                  decoration: InputDecoration(
                    labelText: 'Chức vụ',
                    labelStyle: TextStyle(
                      fontSize: fontSize),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập chức vụ';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16 * scale),
                Button(
                  label: 'Đăng Ký Ngay',
                  labelSize: 14,
                  labelColor: "0xFFFFFFFF",
                  radius: 51,
                  width: 480 * scale,
                  height: 44 * scale < 35 ? 35 : 44 * scale,
                  bgColor: "0xFF0353CC",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final formData = {
                        'Tên': _nameController.text,
                        'SĐT': _numberController.text,
                        'Email': _emailController.text,
                        'Công Ty ': _companyController.text,
                        'Chức Vụ': _roleController.text,
                      };
                      onPressedCallback(formData);
                      showDialog(
                        // ... Your success dialog code ...
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Thông báo'),
                            content: const Text('Đăng ký thành công'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

