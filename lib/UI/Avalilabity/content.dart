import 'package:book_recommend/UI/Avalilabity/able.dart';

import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String btext;
  final String stext;

  const AppColumn({Key? key,required this.btext,required this.stext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

        children: [
          SizedBox(height:5),
          Text(btext,style: TextStyle(fontWeight: FontWeight.bold),overflow:TextOverflow.ellipsis),
          SizedBox(height:10)
          ,Text(stext,overflow:TextOverflow.ellipsis,style: TextStyle(color:Colors.grey.withOpacity(0.8)))
          ,SizedBox(height:13),
          Center(
            child: Row(
              children: [
                Able(icon: Icons.person,
                    text: "Author",
                    color: Colors.grey.withOpacity(0.8),
                    iconColor: Colors.brown),
                SizedBox(width:50),
                Able(icon: Icons.visibility,
                    text: "4",
                    color: Colors.grey.withOpacity(0.9),
                    iconColor: Colors.black)
              ],
            ),
          )


        ],
      ),
    );
  }
}
