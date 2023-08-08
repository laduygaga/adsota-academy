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
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _numberController,
              decoration: const InputDecoration(labelText: 'Number'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your number';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _companyController,
              decoration: const InputDecoration(labelText: 'Company'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your company';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _roleController,
              decoration: const InputDecoration(labelText: 'Role'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your role';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            Button(
              label: 'Đăng Ký Ngay',
              labelSize: 14,
              labelColor: "0xFFFFFFFF",
              radius: 51,
              width: 480,
              height: 44,
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
  }
}

