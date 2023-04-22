import 'package:add_to_card_pro/screen/Provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_Scrren extends StatefulWidget {
  const Home_Scrren({Key? key}) : super(key: key);

  @override
  State<Home_Scrren> createState() => _Home_ScrrenState();
}

class _Home_ScrrenState extends State<Home_Scrren> {
  product_Provider? provider;
  int? index;
  @override
  void initState() {
    super.initState();
    provider =Provider.of<product_Provider>(context,listen: false);

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/image/logo1.png",height: 30,width: 100,) ,
        leading: Icon(Icons.menu,color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.search_rounded,color: Colors.black,),
                SizedBox(width: 15),
                Icon(Icons.favorite,color: Colors.black,),
                SizedBox(width: 15),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.shopping_cart,color: Colors.black,)),
                SizedBox(width: 15),
                Icon(Icons.notifications,color: Colors.black,),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/image/s1.jpg"),
                  SizedBox(width: 10),
                  Image.asset("assets/image/s2.jpg"),
                  SizedBox(width: 10),
                  Image.asset("assets/image/s3.png",height: 600,width: 250,),
                  SizedBox(width: 10),
                ],
              );

            },scrollDirection: Axis.horizontal,itemCount: 3,),
          ),

          Text("Shop for"),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'item',arguments: index);
                  },
                  child: Container(
                    height: 100,
                    width: 200,
                    child: Column(
                      children: [
                        Text("Men"),
                        Image.asset("assets/image/mm1.jpg",height: 50,width: 50,),

                      ],
                    )
                  ),
                ),
                Container(
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      Text("Women"),
                      Image.asset("assets/image/ww1.jpg",height: 50,width: 50,),

                    ],
                  )
                ),
                Container(
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      Text("Couple"),
                      Image.asset("assets/image/cc1.jpg",height: 50,width: 50,),

                    ],
                  )
                ),
              ],
            )
          )
        ],
      ),
    ),);
  }

  
}
