import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auto_complete.dart';


main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE0E0E0),
        appBar: AppBar(backgroundColor: Color(0xfffafafa),),
        body:AutocompleteBasicExample() ,
      ),
    );
  }
}
//TimeLine()

//TimeLineTeste()