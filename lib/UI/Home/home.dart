import 'package:book_recommend/UI/Avalilabity/able.dart';
import 'package:book_recommend/UI/Home/bookp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _homepage extends StatefulWidget {
  const _homepage({Key? key}) : super(key: key);

  @override
  State<_homepage> createState() => _homepageState();
}

class _homepageState extends State<_homepage> with TickerProviderStateMixin {
  void onTap(int index){

  }
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(

      body: Container(margin:EdgeInsets.only(top:45),
        padding: EdgeInsets.only(left:10,right:10),
        child: Column(
          children: [
            Container(

              child: Row(
                children:[
                  IconButton(onPressed: (){
                    Navigator.push( context,
                      MaterialPageRoute(builder: (context) => bookdetail() ), );
                  }, icon: Icon(Icons.menu,size:30,color:Colors.black54)),
                  Expanded(child: Container()),
                  Container(
                    margin:const EdgeInsets.only(right:20),
                    width:30,
                    height:30,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity((0.5))
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(height:0),
            Container(child:Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: const EdgeInsets.only(left:7,right:10),
                  controller:_tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor:Colors.grey,
                  isScrollable:true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: cirlceTabIncidcator(color: Colors.black,radius: 4),
                  tabs:[
                    Tab(text:"Books"),
                    Tab(text:"Just Viewed"),
                    Tab(text:"Notes"),
                  ]),
            ),),
            Expanded(
              child: Container(
                  margin:const EdgeInsets.only(right:20),
                  height:900,
                  width: double.maxFinite,
                  child:
                  ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap:true,itemCount:10,itemBuilder:(context,index)
                  {
                    return Container(
                        margin:EdgeInsets.only(left:12,right:12,bottom:10),
                        child:Row(
                          children: [
                            Container(
                              width:120,
                              height: 120,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.white38,boxShadow: [BoxShadow(color:Colors.grey.withOpacity(0.4),spreadRadius: 3,blurRadius: 5
                                  ,offset: Offset(0, 2))],
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Screenshot 2023-02-28 210132.jpg"
                                      )
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                    color:Colors.white70,boxShadow: [BoxShadow(color:Colors.grey.withOpacity(0.5),spreadRadius: 5,blurRadius: 7
                                        ,offset: Offset(0, 3))]
                                ),
                                child: Padding(padding: EdgeInsets.only(left:10),
                                    child:
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height:5),
                                        Text("Data Based Management System jdkaldjdaldlkffakd",style: TextStyle(fontWeight: FontWeight.bold),overflow:TextOverflow.ellipsis),
                                        SizedBox(height:10)
                                        ,Text("Data Based Management System jdkaldjdaldlkffakd",overflow:TextOverflow.ellipsis,style: TextStyle(color:Colors.grey.withOpacity(0.8)))
                                        ,SizedBox(height:13),
                                        Row(
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
                                        )


                                      ],
                                    )

                                ),
                              ),
                            )],
                        )
                    );

                  })
              ),
            )],
        ),
      ),

    );
  }
}



class cirlceTabIncidcator extends Decoration{
  final Color color;
  double radius;
  cirlceTabIncidcator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback?onChanged]) {
    // TODO: implement createBoxPainter
    return _circlePainter(color:color,radius:radius);
  }}
class _circlePainter extends BoxPainter{
  final Color color;
  double radius;
  _circlePainter ({required this.color,required this.radius});
  @override

  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint=Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset=Offset(configuration.size!.width/2 - radius/2,configuration.size!.height);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }

}

