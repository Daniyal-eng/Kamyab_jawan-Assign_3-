import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
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
            myContainerWidget("Gaming PC",
                "5.0 (99 Reviews)" ,
              "1000\$",
                "1",
                "20",
                'https://vrlatech.com/wp-content/uploads/2019/08/Titan.png',
                ),
            myContainerWidget("Graphics Card",
              "5.0 (50 Reviews))" ,
              "130\$",
              "20",
              "30",
              'https://www.gigabyte.com/FileUpload/global/news/1635/o201808201633495922.png',
            ),
            myContainerWidget("Macbook Pro",
              "4.8 (60 Reviews)" ,
              "550\$",
              "5",
              "10",
              'https://applecompany.pk/wp-content/uploads/2020/08/Macbook-Pro-16-Inches-Space-Gray-1.jpg',
            ),
            myContainerWidget("RGB Keyboard",
              "4.0 (63 Reviews)" ,
              "20\$",
              "50",
              "50",
              'https://i.dell.com/is/image/DellContent//content/dam/global-asset-library/Products/peripherals_dell/Keyboards/aw410k/aw410k_ckb_rf_gy.psd?fmt=pjpg&pscan=auto&scl=1&wid=3422&hei=2468&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0&size=3422,2468',
            ),
          ],
        ),
      ),
    );
  }
}

Widget myContainerWidget(String title , String reviews , String price , String quantity , String pieces , String img){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2 , color: Colors.black),
      ),
      height: 150,
      width: 500,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2 , color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: NetworkImage(img)
                )
              ),
              height: 130,
              width: 130,
            ),
          ),
          Container(
            height: 130,
            width: 200,
            child: Column(
              children: [
                SizedBox(height: 15 ,),
                Align(
                  alignment: Alignment.topLeft,
                    child: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),)),
                SizedBox(height: 5 ,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Text(reviews,style: TextStyle(color: Colors.grey),),
                  ],),
                ),
                SizedBox(height: 5 ,),
              Align(
                alignment: Alignment.topLeft,
                child: Row(children: [
                  Text("$pieces Pieces",style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 5,),
                  Text(price,style: TextStyle(color: Colors.purple),),
                ],),
              ),
                SizedBox(height: 5 ,),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Quantity $quantity",style: TextStyle(color: Colors.grey,)),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}