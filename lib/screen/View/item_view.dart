import 'package:add_to_card_pro/screen/Provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Item_Screen extends StatefulWidget {
  const Item_Screen({Key? key}) : super(key: key);

  @override
  State<Item_Screen> createState() => _Item_ScreenState();
}

class _Item_ScreenState extends State<Item_Screen> {
  product_Provider? providerF;
  product_Provider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF =Provider.of<product_Provider>(context,listen: false);
    providerT =Provider.of<product_Provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Men",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(Icons.menu, color: Colors.black),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  SizedBox(width: 15),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      )),
                  SizedBox(width: 15),
                ],
              ),
            )
          ],
        ),
        // body: GridView.builder(
        //     gridDelegate:
        //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //     itemBuilder: (context, index) {
        //       return watchpair();
        //     },itemCount: providerF!.itemList.length,),
        body: Center(
          child:watch(),
        ),
      ),
    );
  }
  Widget watchpair()
  {
    return Container(
      height: 100,
      width: 100,
      color: Colors.white,
      child:ListView.builder(itemBuilder: (context, index) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/image/m1.jpg"),
            SizedBox(width: 10),
            Image.asset("assets/image/m2.jpg"),
            SizedBox(width: 10),
            Image.asset("assets/image/m3.jpg"),
            SizedBox(width: 10),

            Image.asset("assets/image/43.jpg"),
            SizedBox(width: 10),
          ],
        );
      },itemCount: 3,),
    );

  }
  Widget watch()
  {
    return Container(
      height: 200,
      width: 200,
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ), itemBuilder: (context, index) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            children: [
              Image.asset("${providerF!.itemList[index].image}"),
              Text("${providerF!.itemList[index].name}"),
              // Image.asset("assets/image/m1.jpg"),

            ],
          ),
        );

      },itemCount: providerF!.itemList.length,),
    );
  }
}
