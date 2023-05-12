import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_detail_screen/config/colors.dart';

class RecipeDetailAppBar extends StatelessWidget {
  const RecipeDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 275,
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/image/food_picture.png',
          fit: BoxFit.cover,
        ),
        stretchModes: [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: Container(
          height: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Container(
            width: 40,
            height: 5,
            decoration: BoxDecoration(
              color: kOutlineColor,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ),
      ///////////////////////////////////
      ///////////////////////////////////
      ///  ICOMBUTTON BACK
      ///////////////////////////////////
      ///////////////////////////////////
      leadingWidth: 80,
      leading: Container(
        margin: EdgeInsets.only(left: 24, top: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(56),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              height: 56,
              width: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.20),
              ),
              child:
                  SvgPicture.asset('assets/icons/arrow-ios-back-outline.svg'),
            ),
          ),
        ),
      ),
    );
  }
}
