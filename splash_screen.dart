import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/login_screen.dart';
import 'package:e_mart/widgets_comman/applogo_widget.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=>const LoginScreen());
    });
  }
@override
void initState(){
  changeScreen();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg,width: 300)
            ),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(25).white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox


          ],
        ),
      ),
    );
  }
}