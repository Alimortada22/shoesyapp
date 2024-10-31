import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
   CartItem({super.key,required this.shoeitem,required this.onTap});
Shoe shoeitem;
void Function()? onTap;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8)
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoeitem.imagepath),
        title: Text(widget.shoeitem.name),
        subtitle: Text(widget.shoeitem.price),
        trailing: IconButton(onPressed:widget.onTap , icon: const Icon(Icons.delete)),
        
      ),
    );
  }
}