import 'package:e_mart/item_details.dart';
import 'package:e_mart/widgets_comman/bg_widget.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
final String?title;

const CategoryDetails({super.key , required this.title});
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make() ,
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(6, (index) => "Men's Clothing".text.size(12).fontFamily(bold).color(darkFontGrey).makeCentered().box.white.size(120, 60).margin(const EdgeInsets.symmetric(horizontal: 4)).rounded.make()),
              ),
            ),
            
           20.heightBox,

           Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
             itemCount: 6,
             shrinkWrap: true,
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 250,
             mainAxisSpacing: 8,crossAxisSpacing: 8 ), 
             itemBuilder: (context,index){
            return  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgP5 , width: 200, height: 150, fit: BoxFit.cover),
                            "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            "\$600".text.color(redColor).size(16).fontFamily(bold).make()
                          ],
                        ).box.margin(const EdgeInsets.symmetric(horizontal: 5)).roundedSM.outerShadowSm.white.padding(const EdgeInsets.all(12)).
                        make().onTap(() {
                          Get.to(()=> const ItemDetails(title: "Dummy Item"));
                        });
           }))


            ],
          ),
        ),
      )
    );
  }
}