import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier{
List<Shoe> shoescategores=const [
  Shoe(name:"Airjorden9" , price: "1500 EG", imagepath: "lib/images/air jordan9.png", description: "cool shoes"),
  Shoe(name: "Aireforce" , price: "1200", imagepath: "lib/images/aireforce.png", description: "fancy one"),
  Shoe(name: "Airmax", price: "3000", imagepath: "lib/images/airmax.png", description: "Take breath"),
  Shoe(name:"Airmax9" , price: "600", imagepath: "lib/images/nike-air-max-97.png", description: "seatdown baby"),
  Shoe(name:"Joyride run" , price: "2600", imagepath: "lib/images/women joyride run.pngjpg.jpg", description: "Take ride"),
];
List<Shoe> usercart=[];
List<Shoe> getUsercartitems()=>usercart;
List<Shoe> displayShoesinstock()=> shoescategores;
void addItemToUserCart(Shoe shoe){
  usercart.add(shoe);
  notifyListeners();
}

void removeItemFromUserCart(Shoe shoe){
  usercart.remove(shoe);
  notifyListeners();
}



}