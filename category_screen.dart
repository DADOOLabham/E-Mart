import 'package:e_mart/category_details.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/widgets_comman/bg_widget.dart';
import 'package:get/get.dart';


class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: category.text.fontFamily(bold).white.make(),       
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 200), 
          itemBuilder: ((context, index) {
            return Column(
             children: [
              Image.asset(categoryImages[index] , height: 140, width: 200, fit: BoxFit.cover),
              10.heightBox,
              categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make()
             ],
            ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
              Get.to(()=> CategoryDetails(title: categoriesList[index]));
            });
          })),
        ),
      )
    );
}
}