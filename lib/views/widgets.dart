

import 'package:bike_rental_app_ui/imports/imports.dart';



//---------------------------AppBar------------------------------------------------------------------
class appBar extends StatelessWidget {
 
 Color? color;

 appBar({required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
      
    Container(
      height: 35.h,
      width: 35.h,
      padding: EdgeInsets.all(9),
      decoration: BoxDecoration(
        border: Border.all(color: color!, ),
        borderRadius: BorderRadius.circular(8.r)
      ),
      child: Center(child: Text("br", style: TextStyle(color: color, fontSize: 15))),
    ),
    
    Icon(Icons.more_vert_sharp, color: color!,),
      
            ],
    );
  }
}

//---------------------------Gradient Button------------------------------------------------------------------

class GradientButton extends StatelessWidget {
 final double? borderRadius;
final String? text;

 GradientButton({this.borderRadius, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 130.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        gradient: LinearGradient(
          begin:Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
               Color(0xff6030f4),
            Color(0xff9829f5),
          
          ],

        )
      ),
      child: Center(child: Text(text!, style:TextStyle(color: Colors.white, ))),
    );
  }
}

//---------------------------Image Card------------------------------------------------------------------

class ImageCard extends StatelessWidget {
final String? imageUrl;
final String? bikeName;
final Color? textColor;

 ImageCard({this.imageUrl,this.bikeName,this.textColor});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [

          Container(
        height: 180.h,
        width: 300.w,
        decoration: 
      BoxDecoration(
        borderRadius: BorderRadius.circular(14),
       image: DecorationImage(
         fit: BoxFit.cover,
         image: AssetImage(imageUrl!))
      )
      ),
          Positioned(
            top: 13,
            left: 140,
            child: Text(bikeName!, style:TextStyle(color: textColor!,fontSize: 15.sp))),
    
        ],
      )
    );
  }
}

//---------------------------SEARCH BAR------------------------------------------------------------------


class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 400.w,
      child: TextField(
        cursorHeight: 12,
        cursorColor: Colors.transparent,
        decoration: InputDecoration(
           enabledBorder: UnderlineInputBorder(      
            borderSide: BorderSide(color: Colors.grey[500]!),   
            ),  
    focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[500]!),
         ),  
          suffixIcon: Icon(Icons.search, size: 38, color: Colors.black),
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 33, color: Colors.grey)
          ),
      ),
    );
  }
}

//---------------------------TabBar------------------------------------------------------------------

class TabBars extends StatelessWidget {
  const TabBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GradientButton(borderRadius: 9, text: "Popular"),
        Container(
          height: 60.h,
          width: 120.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: Colors.grey),
          ),
          child: Center(child: Text("All", style: TextStyle(fontWeight: FontWeight.bold),)),
          )
      ],
    );
  }
}

