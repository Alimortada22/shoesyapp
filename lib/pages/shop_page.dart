import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/showtile.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void additemtousercart(Shoe addeditem){
    Provider.of<Cart>(context,listen: false).addItemToUserCart(addeditem);
    showDialog(context: context, builder: (context){
      return const AlertDialog(
        title: Text(" Sucesssfully added!"),
        content: Text("Check your cart"),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Search"), Icon(Icons.search)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "Every one flies...some fly longer than others",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              physics:const  BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: value.displayShoesinstock().length,
                itemBuilder: (context, index) {
                  Shoe displayshoeitem = value.displayShoesinstock()[index];
                  return ShowTile(
                    shoe: displayshoeitem,
                    onTap: (){
                      additemtousercart(displayshoeitem);
                    },
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25,bottom: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
    },);
  }
}
