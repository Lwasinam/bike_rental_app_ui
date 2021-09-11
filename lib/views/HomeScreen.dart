import 'package:bike_rental_app_ui/imports/imports.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);


  

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


  GlobalKey<AnimatorWidgetState> key = GlobalKey<AnimatorWidgetState>();
  GlobalKey<AnimatorWidgetState> key2 = GlobalKey<AnimatorWidgetState>();
  GlobalKey<AnimatorWidgetState> key3 = GlobalKey<AnimatorWidgetState>();
  GlobalKey<AnimatorWidgetState> key4 = GlobalKey<AnimatorWidgetState>();
  bool upDirection = false;
  
final ScrollController? controller = ScrollController();


class _HomeScreenState extends State<HomeScreen>  with TickerProviderStateMixin{

    ScrollController? _controller;
  var pad = 10.0;
  var old = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<ScrollNotification>(
    
        onNotification: (scrollNotification) {

          //print(current);
       
            if (scrollNotification is ScrollStartNotification){
             WidgetsBinding.instance!
                    .addPostFrameCallback((_) {
                       setState(() {
                  pad = 50;
                });
                    });
               
            }
            else if (scrollNotification is ScrollEndNotification){
                WidgetsBinding.instance!
                   .addPostFrameCallback((_) {
                       setState(() {
                  pad = 10;
                });
                    });
            }
       

          return true;
          },
          child: SingleChildScrollView(
            controller: _controller,
         //  physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 15,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  appBar(color: Colors.black,),
                  SearchBox(),
                  TabBars(),
                  SizedBox(height: 20,),
                 Container(
                   height: 500.h,
                   child: Expanded(child: ListView.builder(
                     itemCount: 20,
                     itemBuilder: (BuildContext context, int index) {
                     return      AnimatedPadding(
                    padding: EdgeInsets.only(
                        top: pad,
                        left: 10.0,
                        right: 10.0),
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeIn,
                    child: ImageCard(
                      textColor: Colors.white,
                      bikeName: "Loop",
                      imageUrl: "assets/Bike5mikkelbech.jpg",),
                  );
                    },
                   ), ),),
                  
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}


