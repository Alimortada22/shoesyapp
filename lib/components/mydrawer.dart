import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'lib/images/logo.png',
                  color: Colors.white,
                  width: 150,
                )),
                 Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    onTap: (){
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                    },
                      leading: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: const Text(
                        " Home",
                        style: TextStyle(color: Colors.white),

                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      " About",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  " Logout  ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      );
  }
}