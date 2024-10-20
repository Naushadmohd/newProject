import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: Text(
          "Otp Screen",
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(50.sp),
                child: Image.asset(
                  "assets/images/person.png",
                  height: 20.h,
                ),
              )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 5.h),
                    TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter passowrd";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter password",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 5.h),
                    SizedBox(
                        width: 80.w,
                        height: 5.6.h,
                        child: CupertinoButton(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {}
                            },
                            child: Text("Login")))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
