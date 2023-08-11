import 'package:flutter/material.dart';
import '../atoms/button.dart';

class OTAForm extends StatefulWidget {
  const OTAForm({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double screenWidth = constraints.maxWidth;
        double scale = screenWidth / 530;
        double fontSize = 22 * scale;

        return Form(
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
                      return 'Please enter your name';
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
                      return 'Please enter your number';
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
                      return 'Please enter your email';
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
                      return 'Please enter your company';
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
                      return 'Please enter your role';
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
                  height: 44 * scale,
                  bgColor: "0xFF0353CC",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Success'),
                            content: const Text('_ success'),
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
        );
      },
    );
  }
}

