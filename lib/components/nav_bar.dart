import 'package:flutter/material.dart';
import 'package:real_estate_02/components/menu_item.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //constraints help us to determine the type of screen we are using
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar(); //supposed to be TabletNavbar
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Real Estates",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Row(
              children: [
                MenuItem(
                  title: "Home",
                  press: () {},
                ),
                MenuItem(
                  title: "Properties",
                  press: () {},
                ),
                MenuItem(
                  title: "Projects",
                  press: () {},
                ),
                MenuItem(
                  title: "About Us",
                  press: () {},
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class MobileNavbar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//       child: Container(
//         child: Column(
//           children: [
//             Text(
//               "Real Estates",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 fontSize: 30,
//                 fontStyle: FontStyle.italic,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   MenuItem(
//                     title: "Home",
//                     press: () {},
//                   ),
//                   MenuItem(
//                     title: "Properties",
//                     press: () {},
//                   ),
//                   MenuItem(
//                     title: "Projects",
//                     press: () {},
//                   ),
//                   MenuItem(
//                     title: "About Us",
//                     press: () {},
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class MobileNavbar extends StatefulWidget {
  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PopupMenuButton(
                  offset: Offset(0, 40),
                  onCanceled: () {},
                  elevation: 40,
                  color: Colors.pink,
                  icon: Icon(Icons.menu),
                  iconSize: 30.0,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: MenuItem(
                        press: () {},
                        title: "Home",
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: MenuItem(
                        press: () {},
                        title: "Properties",
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: MenuItem(
                        press: () {},
                        title: "Projects",
                      ),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: MenuItem(
                        press: () {},
                        title: "About Us",
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    flex: 5,
                    child: Text(
                      "Real Estates",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
