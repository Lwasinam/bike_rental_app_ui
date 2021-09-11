import 'package:bike_rental_app_ui/imports/imports.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({ Key? key }) : super(key: key);

  @override
  _PurchaseScreenState createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
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
                  image: AssetImage("assets/Bike1.jpg"))
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
                  appBar(color: Colors.white,),
                     SizedBox(height: 45.h,),
                  Text("Canyon U13", style:TextStyle(color: Colors.white, fontSize:35.sp)), 
                    SizedBox(height: 8.h,),
                 RichText(
                    text: TextSpan(
                      text: 'Brand: ',
                      style: TextStyle(color: Colors.grey, fontSize:16.sp),
                      children:  <TextSpan>[
                        TextSpan(text: 'Canyon', style: TextStyle(color: Colors.white, fontSize:16.sp,),),
                     
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                    RichText(
                    text: TextSpan(
                      text: 'Collection: ',
                      style: TextStyle(color: Colors.grey, fontSize:16.sp),
                      children:  <TextSpan>[
                        TextSpan(text: '2020-2021', style: TextStyle(color: Colors.white, fontSize:16.sp,),),
                     
                      ],
                    ),
                  ),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                  Container(
                    
                    height: 20.h,
                    width: 20.h,
                    decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20)),
                    child:  Center(child:  Icon(Icons.check,color: Colors.white, size: 13.sp),)
                  ),
                  SizedBox(width: 10.w,),
                  Text("Availability", style:TextStyle(color: Colors.white,fontSize:16.sp,),),
                  ],
                ),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      GradientButton(
                        borderRadius: 50,
                        text: "Checkout",
                      ),
                      SizedBox(width: 10.w),
                          Text("\$34", style:TextStyle(color: Colors.white, fontSize:35.sp)), 
                    ],
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