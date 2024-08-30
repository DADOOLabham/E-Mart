import 'package:e_mart/components/details_card.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/widgets_comman/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return bgWidget(
    child: Scaffold(
      body: SafeArea(child: Column(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.edit , color: whiteColor,) ,
          ).onTap(() {}),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image.asset(icMe,width: 100,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "LABHAM".text.fontFamily(bold).white.make(),
                    "labham@gmail.com".text.white.make(),
                  ],
                )),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: whiteColor
                    )
                  ),
                onPressed: (){}, child: "Logout".text.fontFamily(semibold).white.make(),
                )
              ],
            ),
          ),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(count: "00",title: "in your cart",width: context.screenWidth/3.4,),
              detailsCard(count: "04",title: "in your wishlist",width: context.screenWidth/3.4),
              detailsCard(count: "02",title: "in your orders",width: context.screenWidth/3.4),
            ],
          ).box.color(redColor).make(),
          
          
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context,index){
              return const Divider(color: lightGrey);
            },
            itemCount: profileButtonsList.length,
            itemBuilder: (BuildContext context,int index){
              return ListTile(
                leading: Image.asset(profileButtonsIcon[index],width: 22),
               title: profileButtonsList[index].text.fontFamily(bold).color(darkFontGrey).make(),
              );
            }, 
          ).box.white.rounded.margin(const EdgeInsets.all(8)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),

        ],
      )),
    )
   );
  }
}