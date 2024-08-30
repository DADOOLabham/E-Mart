import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/widgets_comman/our_button.dart';


class ItemDetails extends StatelessWidget {
  final String?title; 
  const ItemDetails({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Padding(
           padding: const EdgeInsets.all(8),
           child: SingleChildScrollView(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VxSwiper.builder(
                  autoPlay: true,
                  height: 350,
                  aspectRatio: 20/10,
                  itemCount: 3, itemBuilder: (context,index){
                  return Image.asset(imgFc5,width: double.infinity, fit: BoxFit.cover,);
                }),
                10.heightBox,
                title!.text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                10.heightBox,
                VxRating(onRatingUpdate: (value) {},normalColor: textfieldGrey,selectionColor: golden,count: 5,size: 25,stepInt: true),
                10.heightBox,
                "\$30,000".text.color(redColor).fontFamily(bold).size(18).make(),
                10.heightBox,
                Row(
                  children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "Seller".text.white.fontFamily(semibold).make(),
                        5.heightBox,
                        "In House Brands".text.fontFamily(semibold).color(darkFontGrey).size(16).make()
                      ],
                    )),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.message_rounded , color: darkFontGrey,),
                    )
                  ],
                ).box.height(60).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                20.heightBox,
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Color: ".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: List.generate(3, (index) => VxBox().size(40, 40).roundedFull.
                          color(Vx.randomPrimaryColor).margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
                        )
                      ],
                    ).box.padding(const EdgeInsets.all(8)).make(),

                     Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Quantity: ".text.color(textfieldGrey).make(),
                        ),
                        Row(
                         children: [
                           IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                           "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                           IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                           10.widthBox,
                           "(0 available)".text.color(textfieldGrey).make()
                         ],
                        ),
                      ],
                    ).box.padding(const EdgeInsets.all(8)).make(),

                     Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Total: ".text.color(textfieldGrey).make(),
                        ),
                       "\$0.00".text.size(16).color(redColor).fontFamily(bold).make()
                      ],
                    ).box.color(lightGolden).padding(const EdgeInsets.all(8)).make(),
                  ],
                ).box.white.shadowSm.make(),

                10.heightBox,
                "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                10.heightBox,
                "This is a dummy item and dummy description here...".text.color(darkFontGrey).make(),

               10.heightBox,
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                    itemDetailButtonList.length,
                     (index) => ListTile(
                    title: itemDetailButtonList[index].text.fontFamily(bold).color(darkFontGrey).make(),
                    trailing: const Icon(Icons.arrow_forward),
                  )),
                ),
                20.heightBox,

                productsyoumaylike.text.fontFamily(bold).color(darkFontGrey).size(16).make(),

                10.heightBox,
                SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(6, (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgP1 , width: 150, fit: BoxFit.cover),
                            10.heightBox,
                            "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            "\$600".text.color(redColor).size(16).fontFamily(bold).make()
                    
                          ],
                        ).box.margin(const EdgeInsets.symmetric(horizontal: 5)).roundedSM.white.padding(const EdgeInsets.all(8)).make()
                        ),
                      ),
                    ),
              ],
             ),
           ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
              color: redColor,
              onPress: (){},
              textColor: whiteColor,
              title: "Add to Cart"
            ),
          )
        ],
      ),
    );
  }
}