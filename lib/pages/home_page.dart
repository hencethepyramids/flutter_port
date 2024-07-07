import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_port/constants/colors.dart';
import 'package:flutter_port/styles/style.dart';
import 'package:flutter_port/widgets/header.desktop.dart';
import 'package:flutter_port/widgets/header_mobile.dart';
import 'package:flutter_port/widgets/site_logo.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ), // EdgeInsets.only
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.close),
              ), // IconButton
            ), // Padding
            for(int i = 0; i<navIcons.length; i++)
            ListTile(
              contentPadding:const EdgeInsets.symmetric(
                horizontal: 30.0,
              ), // EdgeInsets.symmetric
              titleTextStyle:const TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: fontWeight.w600,
                fontSize: 16,
              ), // TextStyle
              onTap: () {

              },
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            ) // ListTile
          ]
        )
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // MAIN
          // HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              scaffoldKey.currentState?.openEndDraer();
            },
          ),

          // SKILLS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,  
          ),

          // PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
          ),
        
          // CONTACT
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,  
          ),
        

                  // FOOTER
          Container(
            height: 500,
            width: double.maxFinite,
          )
        ],
      )
    );
  }
}