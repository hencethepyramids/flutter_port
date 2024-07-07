import 'package:flutter/material.dart';
import 'package:flutter_port/constants/colors.dart';
import 'package:flutter_port/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 20,
                ), // EdgeInsets.only
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close),
                ), // IconButton
              ),
            ), // Padding
            for(int i = 0; i<navIcons.length; i++)
            ListTile(
              contentPadding:const EdgeInsets.symmetric(
                horizontal: 30.0,
              ), // EdgeInsets.symmetric
              titleTextStyle:const TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ), // TextStyle
              onTap: () {

              },
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            ) // ListTile
          ]
        )
      );
  }
}