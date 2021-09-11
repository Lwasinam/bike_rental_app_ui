

import 'imports/imports.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: Size(360, 690),
      builder: () => MaterialApp(
        home: HomeScreen()
      )
    );
  }
}
