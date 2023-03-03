import 'package:book_recommend/UI/Avalilabity/able.dart';
import 'package:book_recommend/UI/Avalilabity/backicon.dart';
import 'package:book_recommend/UI/Avalilabity/content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bookdetail extends StatelessWidget {
  const bookdetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Positioned(left:0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage( "assets/aa.jpg"))
              ),

            ),
          ),
          Positioned(
            top:40,
              left:10,
              right:20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Appicon(icon:Icons.arrow_back_ios)
                   ],
              )),
          Positioned(left:0,
              right:0,
               top:230,
               child: Container(
                padding: EdgeInsets.only(right: 20,left:20,top:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.white

                ),child: Expanded(
                  child: Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                       color:Colors.white
                   ),
                   child: AppColumn(btext: "nirlaz",stext: "Gnawali",)

                   ),
               ),
                )
              )
        ],
      )
    );
  }
}
