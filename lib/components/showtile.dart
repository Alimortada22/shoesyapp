import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

// ignore: must_be_immutable
class ShowTile extends StatelessWidget {
  ShowTile({super.key, required this.shoe,required this.onTap});
  Shoe shoe;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //asset shoes image
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagepath,height: 250,)),
          // shoe description
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[600]),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //shoename
                      Text(shoe.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      //shoe price
                      Text(shoe.price,style: const TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
                //add to cart buuton
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding:const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                    ),
                              child: const Icon(Icons.add,color: Colors.white,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
