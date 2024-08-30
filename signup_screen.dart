import 'package:e_mart/consts/consts.dart';

import 'package:e_mart/widgets_comman/applogo_widget.dart';
import 'package:e_mart/widgets_comman/bg_widget.dart';
import 'package:e_mart/widgets_comman/custom_textfield.dart';
import 'package:e_mart/widgets_comman/our_button.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
             (context.screenHeight * 0.1).heightBox,
             applogoWidget(),
             10.heightBox,
             "Join $appname".text.fontFamily(bold).white.size(18).make(),
             32.heightBox, 
             Column(
              children: [
                customTextField(hint: nameHint,title: name),
                customTextField(hint: emailHint,title: email),
                customTextField(hint: passwordHint,title: password),
                customTextField(hint: passwordHint,title: retypePassword),
               5.heightBox,
               Row(
                children: [
                  Checkbox(
                   checkColor: redColor,
                   value: isCheck, 
                   onChanged: (newValue){
                    setState(() {
                    isCheck = newValue;
                    });
                   },
                  ),
                  10.widthBox,
                  Expanded(
                    child: RichText(text: const TextSpan(
                      children: [
                        TextSpan(text: "I agree to the " , style: TextStyle(fontFamily: bold,color: fontGrey)),
                        TextSpan(text: termAndCond , style: TextStyle(fontFamily: bold,color: redColor)),
                        TextSpan(text: "&" , style: TextStyle(fontFamily: bold,color: fontGrey)),
                        TextSpan(text: privacyPolicy , style: TextStyle(fontFamily: bold,color: redColor)),
                      ],
                    )),
                  )
                ],
               ),
               5.heightBox,
                ourButton(color: isCheck==true? redColor: lightGrey, title: signup, textColor: whiteColor, onPress: (){} ).box.width(context.screenWidth - 50).make(),
               10.heightBox,
               RichText(text: const TextSpan(
                  children: [
                    TextSpan(text: alreadyHaveAccount,style: TextStyle(fontFamily: bold, color: fontGrey)),
                    TextSpan(text: login,style: TextStyle(fontFamily: bold, color: redColor)),
                  ]
                ),
                ).onTap(() {
                  Get.back();
                }),
              ],
             ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make()
            ],
          ),
        ),

    ));
  }
}