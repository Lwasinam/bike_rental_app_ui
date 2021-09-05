import 'imports/imports.dart';

class appBar extends StatelessWidget {
  const appBar({
    Key? key,
  }) : super(key: key);

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
        border: Border.all(color: Colors.white, ),
        borderRadius: BorderRadius.circular(8.r)
      ),
      child: Center(child: Text("br", style: TextStyle(color: Colors.white, fontSize: 15))),
    ),
    
    Icon(Icons.more_vert_sharp, color: Colors.white,),
      
            ],
    );
  }
}