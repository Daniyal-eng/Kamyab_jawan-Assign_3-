import 'package:flutter/material.dart';

class Historydata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Ecom App UI",style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications,size: 30,color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username",
                  hintStyle: TextStyle(fontSize: 18,color: Colors.grey),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                  child: Text("History",style: TextStyle(color: Colors.grey),)),
            ),
             myListTile("Gaming PC",
                 "5.0 (99 Reviews)" ,
                 'https://vrlatech.com/wp-content/uploads/2019/08/Titan.png',
                 context,
                 "1000\$"
             ),
            myListTile("Graphics Card",
                "5.0 (50 Reviews)" ,
                'https://www.gigabyte.com/FileUpload/global/news/1635/o201808201633495922.png',
                context,
                "130\$"
            ),
            myListTile("c",
                "4.8 (60 Reviews)" ,
                'https://applecompany.pk/wp-content/uploads/2020/08/Macbook-Pro-16-Inches-Space-Gray-1.jpg',
                context,
                "550\$"
            ),
            myListTile("RGB Keyboard",
                "4.0 (63 Reviews)" ,
                'https://i.dell.com/is/image/DellContent//content/dam/global-asset-library/Products/peripherals_dell/Keyboards/aw410k/aw410k_ckb_rf_gy.psd?fmt=pjpg&pscan=auto&scl=1&wid=3422&hei=2468&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0&size=3422,2468',
                context,
                "20\$"
            ),
            myListTile("Mercedes",
                "5.0 (99 Reviews)" ,
                'https://pngimg.com/uploads/mercedes/mercedes_PNG80199.png',
                context,
                "5000\$"
            ),
            myListTile("Core i9 10th Gen",
                "4.6 (85 Reviews)" ,
                'https://www.tejar.pk/media/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/i/n/intel_core_i9-10900k_processor_-_1tejar.jpg',
                context,
                "100\$"
            ),
            myListTile("Yamaha YBR 125G",
                "3.0 (64 Reviews)" ,
                'https://cache1.pakwheels.com/system/bike_model_pictures/1118/original/Honda_Freed_(14).jpg?1540816812',
                context,
                "600\$"
            ),
          ],
        ),
      ),
    );
  }
}

Widget myListTile(String title ,String review , String imageLink, BuildContext context,String price){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 80,
      width: 500,
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.black)
      ),
      child: Row(
        children: [
          SizedBox(width: 10,),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60)),
              image: DecorationImage(
                image: NetworkImage(imageLink),
              )
            ),
          ),
          SizedBox(width: 10,),
          Container(
            child: Column(
              children: [
                SizedBox(height: 15 ,),
                Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
                Row(children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Text(review,style: TextStyle(color: Colors.grey),),
                ],)
              ],
            ),
          ),
          SizedBox(width: 70,),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Align(
                alignment: Alignment.bottomRight,
                child: Text(price,style: TextStyle(color: Colors.grey,fontSize: 20))),
          ),
        ],
      ),
    ),
  );
}