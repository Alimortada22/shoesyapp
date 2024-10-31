import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/cart_item.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    void deleteUtemFromUserCart(Shoe deletedItem) {
      Provider.of<Cart>(context, listen: false)
          .removeItemFromUserCart(deletedItem);
    }

    return Consumer<Cart>(builder: (context, value, child) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My Cart",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: value.getUsercartitems().isEmpty
                    ? const Center(
                        child: Text("Empity...!"),
                      )
                    : ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: value.getUsercartitems().length,
                        itemBuilder: (context, index) {
                          Shoe displaycartitem =
                              value.getUsercartitems()[index];
                          return CartItem(
                              shoeitem: displaycartitem,
                              onTap: () {
                                deleteUtemFromUserCart(displaycartitem);
                              });
                        }),
              ),
            ],
          ),
        ),
      );
    });
  }
}
