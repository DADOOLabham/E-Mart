import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/splash_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main()  async {
//   WidgetsFlutterBinding.ensureInitialized();
//  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: appname,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.transparent,
       appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: darkFontGrey
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent),
       fontFamily: regular, 
      ),
      home: const SplashScreen(),
    );
  }
}

