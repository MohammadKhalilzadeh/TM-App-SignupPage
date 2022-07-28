import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trader/components/input_fields.dart';
import 'package:trader/components/my_buttons.dart';
import 'package:trader/pages/login.dart';
import 'package:trader/pages/phone_confirm.dart';
import 'package:trader/variables/myvariables.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(size.width * 0.1),
            child: Image.asset("assets/images/logo.png"),
          ),
          Center(
            child: Text(
              "mkacnt".tr,
              style: TextStyle(
                color: Color(color31),
                fontFamily: fontfamily,
              ),
            ),
          ),
          InputField(
            labelText: "firstname".tr,
            fillColor: Color(color31),
            width: size.width * 0.8,
            backgroundColor: Color(color31),
            keyboardType: TextInputType.text,
            controller: firstname,
          ),
          InputField(
            labelText: "lastname".tr,
            width: size.width * 0.8,
            backgroundColor: Color(color31),
            fillColor: Color(color31),
            keyboardType: TextInputType.text,
            controller: lastname,
          ),
          InputField(
            labelText: "phone".tr,
            fillColor: Color(color31),
            width: size.width * 0.8,
            backgroundColor: Color(color31),
            keyboardType: TextInputType.phone,
            controller: phone,
          ),
          InputField(
            labelText: "email".tr,
            width: size.width * 0.8,
            backgroundColor: Color(color31),
            fillColor: Color(color31),
            keyboardType: TextInputType.emailAddress,
            controller: email,
          ),
          InputField(
            labelText: "password".tr,
            fillColor: Color(color31),
            width: size.width * 0.8,
            backgroundColor: Color(color31),
            obscureText: true,
            controller: password,
          ),
          InputField(
            labelText: "repassword".tr,
            width: size.width * 0.8,
            backgroundColor: Color(color31),
            fillColor: Color(color31),
            obscureText: true,
            controller: repassword,
          ),
          SizedBox(
            height: size.width * 0.1,
          ),
          MyButton(
            width: size.width * 0.8,
            backgroundColor: Color(color31),
            color: Colors.white,
            name: "signup".tr,
            onPress: () async {
              // if (password.text == repassword.text) {
              //   await createEntity(host, "users", {
              //     "firstname": firstname.text,
              //     "lastname": lastname.text,
              //     "email": email.text,
              //     "password": password.text,
              //     "phone": phone.text
              //   }, headers: {
              //     'Content-Type': 'application/json'
              //   }).then((value) {}).catchError((err) {});
              // } else {}
              Get.to(() => const PhoneConfirm());
            },
          ),
          Padding(
            padding: EdgeInsets.all(size.width * 0.1),
            child: SizedBox(
              width: size.width * 0.8,
              child: Divider(
                color: Color(color31),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 30,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => LoginScreen());
                },
                child: Text(
                  "amember".tr,
                  style: TextStyle(
                    color: Color(color31),
                    fontWeight: FontWeight.w500,
                    fontFamily: fontfamily,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
