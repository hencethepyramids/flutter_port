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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // MAIN
          // HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {},
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