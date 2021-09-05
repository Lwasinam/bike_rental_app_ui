

import 'imports/imports.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            Transform.scale(
              alignment: Alignment(-0.6,0),
              scale: 3.2,
              child: Container(
              height: ScreenUtil().screenHeight,
              width: ScreenUtil().screenWidth,
              decoration: BoxDecoration(
                
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/Bike4.jpg"))
              ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h,),
                  appBar(),
                     SizedBox(height: 90.h,),
                  Text("bike rent", style:TextStyle(color: Colors.white, fontSize:43)), 
                    SizedBox(height: 8.h,),
                  Text("largest rental service in new york", style:TextStyle(color: Colors.white, fontSize:15)), 
                     SizedBox(height: 20.h,),
                  Container(
                    height: 60.h,
                    width: 130.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin:Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                             Color(0xff6030f4),
                          Color(0xff9829f5),
                        
                        ],

                      )
                    ),
                    child: Center(child: Text("Get started", style:TextStyle(color: Colors.white, ))),
                  )   

                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

