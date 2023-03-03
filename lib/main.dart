import 'package:book_recommend/UI/Avalilabity/able.dart';
import 'package:book_recommend/UI/Avalilabity/content.dart';
import 'package:book_recommend/UI/Home/bookp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart'as dep;
 Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await dep.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) { return const MaterialApp(
    debugShowCheckedModeBanner: false, home: Home(),
  );
  } }
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) { return Scaffold(
    resizeToAvoidBottomInset:false,body: SafeArea(
    child: Column( crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Padding( padding: EdgeInsets.all(16.0), child: Text( 'BOOK-RECOMMENDER', textAlign: TextAlign.center, style: TextStyle( fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.green,
      ),
      ), ), const Padding( padding: EdgeInsets.all(16.0), child: Text( 'Sign In', textAlign: TextAlign.center, style: TextStyle( fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black,
      ),
      ),
      ),
      const SizedBox(height: 16.0), const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'USERNAME',
        ),
      ), ),
      const SizedBox(height: 16.0), const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'PASSWORD',
        ), obscureText: true,
      ), ),
      const SizedBox(height: 32.0),
      Padding( padding: const EdgeInsets.symmetric(horizontal: 16.0), child: ElevatedButton(
        onPressed: () {
          Navigator.push( context,
            MaterialPageRoute(builder: (context) => _homepage() ), );
        }, style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
      ), child: const Text( 'Log In', style: TextStyle(
        color: Colors.white,
      ),
      ),
      ), ),
      const SizedBox(height: 32.0),
      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding( padding: const EdgeInsets.only(left: 16.0), child: ElevatedButton(
          onPressed: () {
            Navigator.push( context,
              MaterialPageRoute(builder: (context) => bookdetail()), ); }, style: ElevatedButton.styleFrom( backgroundColor: Colors.blue, foregroundColor: Colors.white,
        ), child: const Text('SIGN UP'), ),
        ),
        Padding( padding: const EdgeInsets.only(right: 16.0), child: TextButton(
          onPressed: () {}, style: TextButton.styleFrom(
          backgroundColor: Colors.white, foregroundColor: Colors.black,
        ), child: const Text('Forget Password?'),
        ),
        ),
      ],
      ),
    ],
    ),
  ),
  );
  } }
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) { return Scaffold( body: SafeArea(
    child: Column( crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Padding( padding: EdgeInsets.all(16.0), child: Text( 'BOOK-RECOMMENDER', textAlign: TextAlign.center, style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green,
      ),
      ), ), const Padding( padding: EdgeInsets.all(16.0), child: Text( 'Registration Form', textAlign: TextAlign.center, style: TextStyle( fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,
      ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'First Name',
        ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Last Name',
        ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Email ID',
        ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Faculty',
        ),
      ), ), const SizedBox(height: 12.0), const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Password',
        ),
      ), ), const SizedBox(height: 12.0),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), child: TextField(
        decoration: InputDecoration(
          labelText: 'Confirm Password',
        ),
      ), ), const SizedBox(height: 12.0),
      Padding( padding: const EdgeInsets.symmetric(horizontal: 16.0), child: ElevatedButton(
        onPressed: () {}, style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlueAccent,
      ), child: const Text( 'REGISTER', style: TextStyle(
        color: Colors.white,
      ),
      ),
      ),
      ),
    ],
    ),
  ),
  );
  }
}
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
                                    child: AppColumn(btext:"laxmi",stext:
                                      "gnawali",)



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

